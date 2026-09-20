# CF-26 — Address-confirmation list view

Date: 2026-09-17
Status: Fixed in org; verified as administrator on 17/09/2026; committed in `bbce8b4`.

## Purpose
Show address-confirmation task history, including completed tasks.

## Change
- Owner scope: My tasks → All tasks.
- Filter: Subject contains "Confirm service address".
- Columns: Related To, Assigned To, Subject, Status.
- Existing sharing inspected: All users can see this list view.

## Verification
- Before: 26 mixed tasks.
- After: 6 address-confirmation tasks, all showing Completed.
- Related households: Anderson, Clark, Patel, Tran, Murphy, Fitzgerald.
- Retrieved list-view XML matches the configured scope, filter and columns.

## Limitations
- Verification performed as administrator only.
- Other users' record access has not been tested.
- Subject-based matching depends on consistent task wording.
- Completed status alone does not prove an address was confirmed.
- Outstanding address issues remain tracked by the Account flag.