# CF-16 — Default ownership and automation-user review

Reviewed: 18/09/2026
Status: Ownership decisions needed; request drafted, not sent.

## Current evidence

Verified through Salesforce Setup and read-only queries against `sunrise`.

| Setting | Current value |
|---|---|
| Default Lead Owner | Hemayet Hossain |
| Notify Default Lead Owner | Unchecked |
| Default Case Owner | Hemayet Hossain |
| Notify Default Case Owner | Unchecked |
| Automated Case User | Hemayet Hossain |
| Default Workflow User | Hemayet Hossain |

The Group query for Type = Queue returned no records.
The QueueSobject query also returned no records.

All 150 unconverted Leads belong to Hemayet Hossain and have
status Open - Not Contacted. This confirms current ownership;
it does not establish how each Lead acquired that owner.

## Lead assignment rules

NSW Territory Routing is active, with these entries:

| Order | Postal-code criteria | Assign to |
|---|---|---|
| 1 | Starts with 2 | Jack Nguyen |
| 2 | 2280 through 2340 | Mia Kelly |
| 3 | 2500 through 2541 | Ben Carter |

The Standard rule is inactive. Its two country-based entries
both assign to Hemayet Hossain. The older CF-16 statement about
two admin-assigned entries describes this inactive rule.

The active rule matches the documented training routing example.
Its criteria and order were inspected but not changed or tested
during this review.

## Decisions still needed

The Week 4 brief asks Marcus to identify the inbound-lead owner,
the response-time commitment, and whether the existing 150 Leads
should be worked or written off.

The recorded Opportunity custody decision does not establish
Lead or Case ownership requirements.

Default record owners and automation-user settings require
separate decisions; this review does not propose replacing
every Hemayet reference with a queue.

## Proposed request to Marcus — not sent

Marcus, all 150 unconverted Leads currently belong to me and
remain Open - Not Contacted. The default Lead and Case owners
also point to me, and no queues were returned by the review.

Please confirm:
1. Who should handle new inbound Leads, with what response-time
   commitment and backup coverage?
2. Who should handle Cases that need a default owner?
3. Should the existing 150 Leads be worked or written off,
   and who owns that action?
4. Who should be accountable for the automation-user settings
   and review their required access?

If a queue is chosen, please identify its working members and
the person responsible for monitoring it.

## Next steps and limits

Record the decisions, check the proposed users' access and any
queue requirements, then prepare configuration changes and tests.
Coordinate territory-routing work with its separate training task.

CF-16 remains open. No settings, assignment rules, ownership,
notifications or records changed during this review.
The proposed request has not been sent.
