# Gitignore publication guards — 2026-09-25

## Target and changes

Repository: hossainconsulting/salesforce-sunrise-solar. Applied the user's
supplied ignore rules after removing Markdown escapes and formatting markers.
Preserved existing authFile/sfdxAuthUrl, dependency, coverage, test-output and
IDE exclusions. The original disconnected Windows checkout also received these
rules while retaining its additional local exclusions and unrelated work.

The introductory comment does not repeat the unsupported claim of exactly seven
commits. The sanitise-check.sh reference is explicitly marked as a script not
currently present; no sanitizer was created or claimed to have run.

## Actual validation

- git check-ignore --no-index -q: 42 representative ignored-path probes passed
  with exit 0, covering credentials, CLI state, OS/editor files, working folders,
  raw/unredacted exports, review artifacts and preserved project exclusions.
- Three allowed-path probes returned exit 1 as expected: a reviewed evidence CSV,
  an Apex source file and a deliverable Markdown file.
- git ls-files -ci --exclude-standard identified two already-tracked matches:
  .vscode/settings.json and seed/sydney-home-show-leads-RAW.csv.
- git diff --check passed (exit 0). Reviewed the .gitignore diff and this note
  for secrets and personal/customer data; only path patterns and file names
  are published. No file contents from the tracked matches are included.

## Limitations

No files were removed from the index or history. An ignore match is not a finding
that a tracked file contains secrets or PII. No historical content audit or
sanitise-check.sh execution was performed. Case-sensitive RAW patterns match
exactly as supplied. Raw/unredacted patterns also apply within evidence/;
reviewed exports must use a nonmatching name to be ordinarily tracked.

Publication uses a focused branch and PR. No Salesforce operation was performed.
