> Publication review, 25/09/2026: the established repository has now been located.
> Earlier missing-source and upload-blocker statements below describe the original
> Windows checkout. CF-19's naming work is verified, but the whole ticket remains
> open for pending merges. See [publication correction](../cf19-naming-correction/README.md#publication-review-and-correction--25092026)
> for recovered sequencing instructions and CF-04/05/06 status evidence.
# CF-19 account naming preflight — 2026-09-25

## Subsequent resolution

This preflight records the earlier state. The user corrected the status to blocked on the naming standard being stated and identified the live validation rule as authoritative. Its formula, message and description were then retrieved; the standard was explicit, and 47 renames were applied and independently verified. See ../cf19-naming-correction/README.md. GitHub upload remains blocked.

## Target and status

Begin CF-19 in the Salesforce org explicitly addressed by alias `sunrise`. Its prior CF-20 sequencing dependency is reported cleared in the user's register. CF-19 remains incomplete: the approved naming rule is required before constructing or applying corrections.

## Actual validation

- Searched local project documentation and metadata for the naming rule; none was found. Asked the user for the approved format or its location.
- Initial Salesforce CLI queries failed with UNABLE_TO_VERIFY_LEAF_SIGNATURE. Setting NODE_USE_SYSTEM_CA=1 for the querying process enabled use of the system certificate trust store; certificate verification was not disabled.
- `sf data query --target-org sunrise --query "SELECT COUNT() FROM Account" --json` succeeded: 51 accounts.
- Queried Account.Name and independently tallied the returned names: 47 end with the exact suffix ` Residence`; four do not. This coincides with the reported violation count but does not establish that the suffix is the violation or that removing it is approved.

## Changes and next step

Added this evidence only. No records, duplicate rules, merges or configuration were changed. Once the naming standard is available, construct the before/after mapping, check collisions and pending merge cases, then apply the authorized corrections and query back to verify results. Preserve original values for recovery.

## Supporting files and limitations

See ../cf-register-reconciliation/README.md for the supplied register reconciliation. The live count is 51, while that register reports a CF-20 count of 48; their relationship has not been established. No inference of lost or reversed work is made.

Only aggregate query results are retained here, avoiding customer names, record IDs and credentials. Reviewed this note for secrets and personal/customer data. The established Git remote is absent, as verified in this session; GitHub upload and remote commit verification remain blocked. Existing staged and untracked work was preserved. No completion, commit or upload is claimed.
