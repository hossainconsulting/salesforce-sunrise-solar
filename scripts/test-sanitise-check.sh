#!/usr/bin/env bash
# Synthetic fixtures only; no repository/customer content is copied.
set -euo pipefail
scanner=$(cd -- "$(dirname -- "$0")/.." && pwd)/sanitise-check.sh
fixtures=$(mktemp -d)
# Intentionally retain fixtures: scanner safety must not depend on recursive deletion.
printf 'Synthetic fixtures: %s\n' "$fixtures"
expect() {
  local expected=$1 label=$2 status=0
  shift 2
  "$@" > "$fixtures/last-output.txt" 2>&1 || status=$?
  if [ "$status" -ne "$expected" ]; then
    printf 'FAIL %s: expected %s, got %s\n' "$label" "$expected" "$status" >&2
    exit 1
  fi
  printf 'PASS %s\n' "$label"
}
mkdir -p "$fixtures/clean" "$fixtures/ignored/.git" "$fixtures/ignored/.sf" "$fixtures/image"
printf 'ordinary text\n' > "$fixtures/clean/readme.txt"
expect 0 clean bash "$scanner" "$fixtures/clean"
printf 'keep\n' > "$fixtures/clean/.sanitise-review/sentinel"
expect 0 repeat bash "$scanner" "$fixtures/clean"
test "$(cat "$fixtures/clean/.sanitise-review/sentinel")" = keep
printf 'PASS preserves previous output\n'
printf '.sf/\n' > "$fixtures/ignored/.gitignore"
printf 'demo@example.invalid\n' > "$fixtures/ignored/.sf/example.txt"
expect 1 ignored-secret bash "$scanner" "$fixtures/ignored"
expect 1 grep-fallback env PATH=/usr/bin:/bin bash "$scanner" "$fixtures/ignored"
expect 2 bad-root bash "$scanner" "$fixtures/absent"
expect 2 bad-height env STRIP_HEIGHT=0 bash "$scanner" "$fixtures/clean"
expect 2 bad-batch env PER_SHEET=no bash "$scanner" "$fixtures/clean"
# Invalid image guarantees incomplete processing even where image tools exist.
printf 'invalid image\n' > "$fixtures/image/example.png"
expect 2 image-incomplete bash "$scanner" "$fixtures/image"
printf 'All synthetic checks passed.\n'
