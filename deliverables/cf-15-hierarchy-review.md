# CF-15 — Role hierarchy review

Reviewed: 18/09/2026
Status: Requirements needed; decision request drafted, not sent.

## Current evidence

Read-only queries against `sunrise` returned 20 roles:
18 existing sample roles plus Sydney Sales Team and Newcastle Sales Team.

Both local sales roles have Director, Direct Sales as their parent.

Current active-user assignments:
- Jack Nguyen: Sydney Sales Team.
- Mia Kelly: Newcastle Sales Team.
- Ben Carter: Newcastle Sales Team.

The CF-12 assignments were completed on 17/09/2026 and remain
present. See [CF-12 verification](cf-12-role-verification.md).
CF-12 did not redesign the wider hierarchy or verify record
visibility and forecasting behaviour.

The Phase 0 brief identifies Jack and Mia's locations, but does
not name their manager or specify the required access between teams.
The reviewed decision files yielded no matching hierarchy decision.

## Proposed request to Marcus — not sent

Marcus, Sydney and Newcastle sales roles now exist, and Jack,
Mia and Ben have the assignments recorded above. The wider
hierarchy still contains the sample structure.

Please confirm:
1. Who manages each sales team, and who needs oversight of both?
2. For Leads, Accounts, Contacts and Opportunities, should each
   representative see only their own records, their team's records,
   or both teams' records? Who also needs edit access?
3. Who needs sales forecasting oversight, and for which teams?
4. Who should be recorded in each representative's Manager field
   for approval routing? Please confirm this separately.

## Next steps

Use the confirmed requirements to propose the role structure,
user assignments and access tests before implementation.
Review existing sharing and permissions as part of that design.

CF-15 remains open. This review changed no Salesforce configuration,
user assignments or records, and no message was sent.
