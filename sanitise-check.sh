#!/usr/bin/env bash
# =====================================================================
#  sanitise-check.sh — pre-publication scan for the SunRise repo
#
#  Usage:   ./sanitise-check.sh [repo-root]        (default: .)
#
#  What it does:
#    A. Scans text/CSV/markdown for identifiers that should not be public
#    B. Reads image metadata for embedded author/software/GPS fields
#    C. Crops the top strip off every screenshot and builds contact
#       sheets, so 149 images can be eyeballed in about two minutes
#    D. OCRs the strips if tesseract is installed (otherwise incomplete)
#    Exit: 0 no automated findings, 1 findings, 2 incomplete/error.
#    Output: private .sanitise-review/run-*/; never edits source files.
#    Requires Bash 4.4+ and GNU-compatible find/sort (Linux or Git Bash).
#
#  What it CANNOT do:
#    - Read text inside images without tesseract (section D)
#    - Recognise a real person's name or a real street address
#    Those still need your eyes. Section C is what makes that fast.
# =====================================================================

set -uo pipefail
if (( BASH_VERSINFO[0] < 4 || (BASH_VERSINFO[0] == 4 && BASH_VERSINFO[1] < 4) )); then
  printf 'Bash 4.4 or newer is required.\n' >&2
  exit 2
fi

ROOT=$(cd -- "${1:-.}" && pwd -P) || exit 2
[[ "${STRIP_HEIGHT:-130}" =~ ^[1-9][0-9]*$ && "${PER_SHEET:-24}" =~ ^[1-9][0-9]*$ ]] || {
  printf 'STRIP_HEIGHT and PER_SHEET must be positive integers.\n' >&2
  exit 2
}
umask 077
REVIEW="$ROOT/.sanitise-review"
if [ -L "$REVIEW" ]; then
  printf 'Refusing a symlinked review directory.\n' >&2
  exit 2
fi
mkdir -p -- "$REVIEW" || exit 2
OUT=$(mktemp -d "$REVIEW/run-XXXXXXXX") || exit 2
STRIPS="$OUT/strips"
SHEETS="$OUT/sheets"
REPORT="$OUT/report.txt"
STRIP_HEIGHT="${STRIP_HEIGHT:-130}"   # px off the top of each screenshot
PER_SHEET="${PER_SHEET:-24}"

FINDINGS=0
INCOMPLETE=0

banner() { printf '\n\033[1m%s\033[0m\n%s\n' "$1" "$(printf '%.0s-' {1..60})"; }
note()   { printf '  %s\n' "$1"; }
hit()    { printf '  \033[31m!\033[0m %s\n' "$1"; FINDINGS=$((FINDINGS+1)); }

mkdir -p "$STRIPS" "$SHEETS" || exit 2
: > "$REPORT" || exit 2
problem() { note "$1"; printf 'INCOMPLETE: %s\n' "$1" >> "$REPORT"; INCOMPLETE=1; }

# ---------------------------------------------------------------------
# Tool discovery
# ---------------------------------------------------------------------
have() { command -v "$1" >/dev/null 2>&1; }

if have rg; then GREPPER=rg; else GREPPER=grep; fi
if have magick && magick -version 2>/dev/null | grep -q ImageMagick; then IM=magick
elif have convert && convert -version 2>/dev/null | grep -q ImageMagick; then IM=convert
else IM=""
fi
if [ "$IM" = "magick" ]; then MONTAGE="magick montage"
elif have montage && montage -version 2>/dev/null | grep -q ImageMagick; then MONTAGE=montage
else MONTAGE=""; fi

banner "Tools"
note "text search : $GREPPER"
note "imagemagick : ${IM:-MISSING  (brew install imagemagick / apt install imagemagick)}"
note "exiftool    : $(have exiftool && echo yes || echo 'no  (optional)')"
note "tesseract   : $(have tesseract && echo yes || echo 'no  (optional, enables OCR)')"

# ---------------------------------------------------------------------
# A. Text scan
# ---------------------------------------------------------------------
banner "A. Text, CSV and markdown scan"

scan() {
  local label="$1" pattern="$2" found status
  if [ "$GREPPER" = "rg" ]; then
    rg -n --no-heading -i --hidden --no-ignore \
       -g '!.git/**' -g '!.sanitise-review/**' -g '!node_modules/**' \
       -e "$pattern" "$ROOT" > "$OUT/matches.tmp" 2>> "$OUT/errors.txt"
    status=$?
  else
    grep -rniE --binary-files=without-match \
              --exclude-dir=.git --exclude-dir=.sanitise-review \
              --exclude-dir=node_modules \
              -e "$pattern" "$ROOT" > "$OUT/matches.tmp" 2>> "$OUT/errors.txt"
    status=$?
  fi
  if [ "$status" -gt 1 ]; then problem "Text scan failed: $label"; fi
  found=$(head -40 "$OUT/matches.tmp")
  if [ -n "$found" ]; then
    hit "$label"
    { echo "=== $label ==="; cat "$OUT/matches.tmp"; echo; } >> "$REPORT"
    note "Matches saved privately in $REPORT"
    local n; n=$(echo "$found" | wc -l | tr -d ' ')
    [ "$n" -gt 5 ] && note "      ... $((n-5)) more, see $REPORT"
  else
    [ "$status" -eq 1 ] && note "ok  — $label"
  fi
}

scan "Email addresses"              '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'
scan "Salesforce Org ID (00D...)"   '\b00D[A-Za-z0-9]{12,15}\b'
scan "Salesforce session/instance"  '[A-Za-z0-9.-]+\.(my\.salesforce|lightning\.force|my\.site)\.com'
scan "Australian phone numbers"     '(\b04[0-9]{2}[ -]?[0-9]{3}[ -]?[0-9]{3}\b|(\(0[2-478]\)|\b0[2-478])[ -]?[0-9]{4}[ -]?[0-9]{4}\b|\+61([ -]?[0-9]){9}\b)'
scan "Long tokens / possible keys"  '\b(sk|pk|ghp|gho|xox[baprs])[-_][A-Za-z0-9]{16,}\b'
scan "Password-ish assignments"     '(password|passwd|secret|token|apikey|api_key)[[:space:]]*[:=]'
scan "Security token mention"       'security[ _-]?token'

# ---------------------------------------------------------------------
# B. Image metadata
# ---------------------------------------------------------------------
banner "B. Image metadata"

find "$ROOT" -type f \
  \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) \
  -not -path '*/.git/*' -not -path '*/.sanitise-review/*' \
  -not -path '*/node_modules/*' -print0 | sort -z > "$OUT/images.list"
[ "$?" -eq 0 ] || problem "Image discovery failed"
mapfile -d '' -t IMAGES < "$OUT/images.list"

note "${#IMAGES[@]} images found"

if [ "${#IMAGES[@]}" -gt 0 ] && have exiftool; then
  exiftool -q -q -s -FileName -Artist -Creator -Author -OwnerName -Software -GPS:all -UserComment \
    "${IMAGES[@]}" > "$OUT/metadata.txt" 2>> "$OUT/errors.txt"
  [ "$?" -eq 0 ] || problem "Image metadata extraction failed"
  meta=$(grep -vE '^(========|FileName[[:space:]]*:|[[:space:]]*$)' "$OUT/metadata.txt" || true)
  if [ -n "$meta" ]; then
    hit "Image metadata contains author/owner/GPS fields"
    { echo "=== image metadata ==="; echo "$meta"; echo; } >> "$REPORT"
    note "Review $OUT/metadata.txt; source images were not modified."
  else
    note "ok  — no author/owner/GPS fields"
  fi
elif [ "${#IMAGES[@]}" -gt 0 ]; then
  problem "skipped — exiftool not installed"
fi

# ---------------------------------------------------------------------
# C. Header strips + contact sheets
# ---------------------------------------------------------------------
banner "C. Header strips for eyeball review"

if [ -z "$IM" ] || [ -z "$MONTAGE" ]; then
  [ "${#IMAGES[@]}" -eq 0 ] || problem "skipped — ImageMagick not installed"
elif [ "${#IMAGES[@]}" -eq 0 ]; then
  note "skipped — no images"
else
  note "cropping top ${STRIP_HEIGHT}px off ${#IMAGES[@]} images..."
  i=0
  for f in "${IMAGES[@]}"; do
    i=$((i+1))
    n=$(printf '%04d' "$i")
    base=$(basename "$f")
    $IM "$f" -crop "x${STRIP_HEIGHT}+0+0" +repage \
        -gravity South -background '#222' -splice 0x18 \
        -fill white -pointsize 13 -annotate +4+2 "$n  $base" \
        "$STRIPS/$n.png" 2>> "$OUT/errors.txt" || problem "Strip generation failed: image $n"
  done

  note "building contact sheets ($PER_SHEET strips per sheet)..."
  sheet=0
  mapfile -t STRIPFILES < <(find "$STRIPS" -name '*.png' | sort)
  total=${#STRIPFILES[@]}
  idx=0
  while [ "$idx" -lt "$total" ]; do
    sheet=$((sheet+1))
    batch=("${STRIPFILES[@]:idx:PER_SHEET}")
    $MONTAGE "${batch[@]}" -tile 1x -geometry +0+2 -background '#111' \
             "$SHEETS/sheet-$(printf '%02d' $sheet).png" 2>> "$OUT/errors.txt" || problem "Contact sheet generation failed: $sheet"
    idx=$((idx+PER_SHEET))
  done
  note "ok  — $sheet sheet(s) in $SHEETS"
  note "      open them and look for: your username, your email, the org ID,"
  note "      the instance URL in the address bar, and any real customer name"
fi

# ---------------------------------------------------------------------
# D. Optional OCR of the strips
# ---------------------------------------------------------------------
banner "D. OCR of header strips"

if ! have tesseract; then
  [ "${#IMAGES[@]}" -eq 0 ] || problem "skipped — tesseract not installed"
  note "      macOS: brew install tesseract   Debian: apt install tesseract-ocr"
elif [ ! -d "$STRIPS" ] || [ -z "$(ls -A "$STRIPS" 2>/dev/null)" ]; then
  [ "${#IMAGES[@]}" -eq 0 ] || problem "skipped — no strips to read"
else
  # Salesforce headers are sometimes white-on-dark and sometimes dark-on-white.
  # Upscale + normalise, then read BOTH polarities — tesseract is much worse
  # at inverted text, and reading only one polarity silently finds nothing.
  : > "$OUT/ocr.txt"
  mkdir -p "$OUT/.ocrtmp"
  for s in "$STRIPS"/*.png; do
    b=$(basename "$s" .png)
    $IM "$s" -colorspace Gray -normalize -resize 250% "$OUT/.ocrtmp/$b-pos.png" 2>> "$OUT/errors.txt" || problem "OCR preprocessing failed: $b"
    $IM "$OUT/.ocrtmp/$b-pos.png" -negate      "$OUT/.ocrtmp/$b-neg.png" 2>> "$OUT/errors.txt" || problem "OCR inversion failed: $b"
    echo "--- $b" >> "$OUT/ocr.txt"
    tesseract "$OUT/.ocrtmp/$b-pos.png" - 2>> "$OUT/errors.txt" >> "$OUT/ocr.txt" || problem "OCR failed: $b positive"
    tesseract "$OUT/.ocrtmp/$b-neg.png" - 2>> "$OUT/errors.txt" >> "$OUT/ocr.txt" || problem "OCR failed: $b negative"
  done
  note "ok  — text written to $OUT/ocr.txt (both polarities read)"
  for pat in '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' '\b00D[A-Za-z0-9]{12,15}\b' 'Hossain'; do
    f=$(grep -inE "$pat" "$OUT/ocr.txt" 2>/dev/null | head -10)
    if [ -n "$f" ]; then
      hit "OCR found a match for /$pat/ in the screenshot headers"
      { echo "=== OCR: $pat ==="; echo "$f"; echo; } >> "$REPORT"
      note "OCR matches saved privately in $REPORT"
    fi
  done
fi

# ---------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------
banner "Summary"
note "Review directory: $OUT"
note "Exit codes: 0 = no automated findings; 1 = findings; 2 = incomplete/error."
if [ "$INCOMPLETE" -ne 0 ]; then
  note "INCOMPLETE — one or more checks failed or were unavailable."
fi
if [ "$FINDINGS" -eq 0 ] && [ "$INCOMPLETE" -eq 0 ]; then
  printf '  \033[32mNo automated findings.\033[0m\n'
else
  printf '  %d finding category/categories. Details: %s\n' "$FINDINGS" "$REPORT"
fi
cat <<'EOF'

  Automated checks do not clear this repo. Two things only you can do:

    1. Open the contact sheets in the printed review directory and look at
       every strip. The header is where your username, the org ID and
       the instance URL live.
    2. Open the CSVs under evidence/ and decide whether the customer
       names, addresses and phone numbers are entirely synthetic.

  Matches need review; they may be synthetic examples or false positives.
  Headers are only part of each image: inspect full images for body content.
  This scans current files, not Git history. Already tracked files stay tracked.
  Do not publish review output. Do not rewrite history or force-push as part
  of this check; handle any confirmed exposure as a separate reviewed task.
EOF

if [ "$INCOMPLETE" -ne 0 ]; then exit 2; fi
if [ "$FINDINGS" -ne 0 ]; then exit 1; fi
exit 0
