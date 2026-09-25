> Publication review, 25/09/2026: the established repository has now been located.
> Earlier missing-source and upload-blocker statements below describe the original
> Windows checkout. CF-19's naming work is verified, but the whole ticket remains
> open for pending merges. See [publication correction](../cf19-naming-correction/README.md#publication-review-and-correction--25092026)
> for recovered sequencing instructions and CF-04/05/06 status evidence.
# CF-19 naming correction — 2026-09-25

## Target and outcome

Salesforce org alias `sunrise`, Account naming cleanup. Corrected 47 names by removing only the trailing ` Residence`. A fresh query verified all 47 target names and zero remaining Account names containing `residence`, case-insensitively. Salesforce execution is complete; evidence publication to GitHub is blocked by the absence of an established remote.

## Status correction and authoritative standard

CF-20 closure alone did not make CF-19 executable. Corrected the earlier Ready line to **blocked on the naming standard being stated**. The blocker was then resolved by reading the live active Account validation rule `Account_Name_No_Residence` through the Salesforce Tooling API. No naming format was inferred from compliant records.

Error Condition Formula, retrieved before execution and again afterward:

```text
AND(
  CONTAINS(LOWER(Name), "residence"),
  OR(ISNEW(), ISCHANGED(Name))
)
```

Error Message (the names below are the rule's own illustrative example):

> Naming standard: use the person's name only, e.g. "Amelia Martin" — not "Amelia Martin Residence". The property belongs in the address fields. One account per household.

Description:

> Enforces residential naming standard (Ticket 2.2): accounts are named for the person; sites live in address fields. Fires only on create or when the name is edited, so the 47 legacy "... Residence" accounts stay editable until they are renamed.

The formula mechanically prohibits that substring on create or name edit. It does not validate a person's identity, implement a full personal-name grammar, or enforce one account per household. This task closes the legacy naming violations only; it does not establish household uniqueness or resolve merge survivorship. Middle initials and all other name text were retained.

The local checkout had no Week 2 deliverables or merge-log file matching the supplied secondary-source pointers. The live rule itself explicitly states the standard and cites Ticket 2.2, so the correction did not depend on that secondary source.

## Execution and actual validation

1. Retrieved the active rule's name, description and error message, then its Metadata field for the exact formula.
2. Queried all 51 current Accounts for Id, Name and LastModifiedDate. Exactly 47 names contained `residence`, and each had the exact trailing suffix ` Residence`.
3. Prepared 47 before/after mappings, retaining all other name text. Checked target names against existing and proposed names, case-insensitively with surrounding whitespace trimmed: zero collisions, empty targets or targets still containing `residence`.
4. Saved the original values, mapping and execution artifacts privately under `.git/cf19-private-2026-09-25/`, outside version-controlled evidence. Those artifacts contain record-level data and must not be published without review.
5. Ran anonymous Apex against `sunrise`. It locked the current Account population, verified the population size and every snapshot Id, Name and LastModifiedDate, rechecked all final names for collisions, asserted exactly 47 changes, and updated only Account.Name using an all-or-none DML statement. No rule bypass was configured. In-transaction readback asserted all target names. The execution compiled and succeeded with marker `CF19_UPDATED_AND_VERIFIED=47`.
6. Queried independently after the transaction. Results: 51 Accounts before and after; zero Account ID set differences; 47 expected renames, zero name mismatches; four unaffected Accounts with unchanged names and LastModifiedDate; zero names containing `residence`.
7. Retrieved the rule Metadata again: still active, with the same formula, description and error message. No rule edits were made.

These checks establish the name changes and unchanged account population. They do not constitute a full audit of related-record automation or every Account field. No merges were issued. The outstanding merge decisions and CF-04/05/06 statuses remain unresolved by this work. The previously reported count of 48 was not reconciled to the live count of 51.

## Evidence and publication

Related notes: ../cf-register-reconciliation/README.md and ../cf19-naming-preflight/README.md. Both have been amended to preserve the corrected status sequence.

The private directory contains before.json, mapping.json, rename.apex, execution.json and after.json. Original names are retained for recovery, but restoring the prohibited suffix would itself be rejected by the active validation rule; no rule bypass or automatic rollback tool was added.

Reviewed publishable evidence for secrets and personal/customer data. No live record IDs, credentials or customer list are included; the only personal-name example is quoted from the rule's own error message. Private artifacts remain inside .git and are not part of the publishable evidence.

`git remote -v` returned no entries after execution. There is no established remote to commit/push this evidence to or remotely verify. Existing unrelated staged changes were preserved; no commit or upload is claimed. Retain these local artifacts until the project remote is available.

## Publication review and correction — 25/09/2026

The user supplied the established repository remote, resolving the missing-remote
blocker. A separate clean checkout of `hossainconsulting/salesforce-sunrise-solar`
was created from commit d20385aad4549811c0a8107d7e658c93566a0370 to publish only this
task's documentation. The original Windows checkout and its unrelated staged
files were left intact. No further Salesforce mutation was performed for publication.

Repository review corrects the earlier completion statement: **the naming
component is complete; CF-19 as a whole remains open for the three pending
merges and their survivorship decisions.** The 18/09 register explicitly
sequenced those merges before renaming. The 25/09 renames therefore occurred
out of that documented sequence, which was unavailable in the original checkout.
The execution evidence above remains valid, but does not justify closing the
whole ticket or claiming compliance with that sequencing instruction.

The secondary source was recovered too:
[Ticket 2.2](../../../deliverables/ticket-2.2-duplicate-management-design.md)
section ③ explicitly states the same person-only naming standard and warns
against renaming ahead of the merge tail. The standard was not missing from
the established project; it was absent from the checkout initially available.

The count discrepancy is also explained by the repository: CF-20 records
48 confirmed households, while the live query counts 51 Account records.
Three same-household pairs remain separate records. These are different measures.

The earlier CF-04/05/06 uncertainty is superseded by repository evidence:
- CF-04: interim custody of 666 Opportunities executed 02/09; final handover
  pending, with review due 30/09. See [custody record](../../../deliverables/cf-04-interim-custodianship.md).
- CF-05: 30 days selected and implemented 01/09, documentation aligned 18/09.
- CF-06: keep Block-on-create approved 01/09; recorded as done.
See [register](../../../deliverables/carry-forward-tickets.md) and
[decisions received](../../../deliverables/decisions-received-marcus.md).
These are repository findings, not fresh live tests of those three controls.

Publication checks: reviewed the added notes for secrets and unnecessary
record-level data; private snapshots and execution logs were not copied into
this checkout. Formula and results are retained above as sanitized evidence.
No Salesforce regression suite was run for this documentation-only publication.

Documentation validation before publication: staged diff whitespace check passed (exit 0); relative Markdown file links resolved; targeted token/private-key/record-ID scan found no matches (rg exit 1). Historical anchors and external URLs were not exhaustively tested.
