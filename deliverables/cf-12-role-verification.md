# CF-12 — Sales user role assignments

Date: 2026-09-17
Status: Applied in sunrise; assignments verified through UI and SOQL.

## Evidence
The Phase 0 build brief, section 0.5, identifies:
- Jack Nguyen as the Sydney sales representative.
- Mia Kelly as the Newcastle sales representative.

Both users had blank Role fields before this change.

## Changes
- Created Sydney Sales Team under Director, Direct Sales.
- Assigned Jack Nguyen to Sydney Sales Team.
- Assigned Mia Kelly to the existing Newcastle Sales Team.
- Ben Carter remains in Newcastle Sales Team.

## Verification
SOQL returned all three users as active with the expected roles.
Retrieved Sydney and Newcastle role metadata.
Both reference DirectorDirectSales and have matching access settings.

## Limits and deployment
- Role metadata does not include user assignments; these must be
  applied separately when reproducing the configuration.
- The target org must contain the parent role DirectorDirectSales.
- Record visibility and forecasting behaviour were not tested.
- The existing sample hierarchy remains; its redesign is CF-15.
- Manager fields were not changed.