# Pre-publication scanner — 2026-09-25

## Target and changes

Added the user's supplied sanitise-check.sh to the SunRise repository with
corrections for reliable scanning and private output. This is a review aid,
not certification that a repository is safe to publish.

- Creates private, unique .sanitise-review/run-* directories without deleting
  prior review work; refuses a symlinked review directory.
- Scans hidden and ignored text files, excluding Git internals, dependencies
  and its generated review files. Keeps raw matches in private reports.
- Distinguishes no automated findings (0), findings (1), and incomplete/error
  (2). Tool failures and missing image tools are reported as incomplete.
- Checks ImageMagick identity to avoid Windows' unrelated convert utility.
- Uses null-delimited image discovery; validates positive numeric options.
- Preserves source images and metadata. Generates derivatives only when image
  tooling is available; does not offer recursive source metadata stripping.
- Retains warnings about human review, false positives and current-tree scope.
  No history rewrite or force-push is performed or recommended by this check.

Requires Bash 4.4+ with GNU-compatible find/sort. LF attributes and executable
Git modes are supplied for both the scanner and the synthetic test script.
This branch builds on the ignore rules in PR #37.

## Actual validation

Environment: Windows, Git for Windows Bash, separate clean publication checkout.

- bash -n sanitise-check.sh: passed, exit 0.
- bash scripts/test-sanitise-check.sh: passed, exit 0. Cases cover a clean
  directory, repeat execution preserving a sentinel, detection in ignored
  hidden files, grep fallback, missing root, invalid numeric options and an
  invalid image causing an incomplete result. Synthetic fixtures remain in
  a local temporary directory; they contain no customer data.
- bash sanitise-check.sh .: exit 2, explicitly captured. Five text-match
  categories: email, org ID, Salesforce hostname, Australian phone, security
  token mention. These are candidates, not confirmed credential/PII exposure.
- Image discovery found 195 current image files. ImageMagick, ExifTool and
  Tesseract were absent, so metadata, contact sheets and OCR were incomplete.
- git check-ignore confirmed generated review output is ignored.
- git diff --check passed. Reviewed publishable source, fixtures and evidence
  for credentials and personal/customer data; raw scan output is excluded.

## Limitations and supporting files

The image-processing success path was not exercised with actual image tools.
No contact sheets were generated or visually reviewed. No history scan was
performed and no existing tracked file was removed. Full-image review and
synthetic-data verification remain outstanding. Header-only OCR cannot clear
text elsewhere in screenshots. Regex matches can miss secrets or flag examples.

Sources: [scanner](../../../sanitise-check.sh) and
[synthetic tests](../../../scripts/test-sanitise-check.sh).
Raw reports, console output and error details are retained privately in the
publication checkout, not included in this evidence or its commit.
