# Dormant user review — SunRise Solar

**Prepared by:** Hemayet Hossain · **For:** Marcus
**Originally prepared:** 19/08/2026 · **Updated:** 18/09/2026
**Sources:** Read-only `User`, `UserLicense`, `LoginHistory` and
`Opportunity` queries against `sunrise` on 18/09/2026, plus the
dated CF-04 custody record. Historical sections below describe
the original 19/08/2026 review.

---

## Updated review — 18/09/2026

This update supersedes the original licence-recovery recommendation
dated 19/08/2026. The historical sections below retain their original
evidence dates.

### Current evidence

Read-only queries against `sunrise` on 18/09/2026 showed:

| User | Active | Profile | Licence | Role | LastLoginDate |
|---|---|---|---|---|---|
| Jack Nguyen | Yes | Standard User | Salesforce | Sydney Sales Team | Blank |
| Mia Kelly | Yes | Standard User | Salesforce | Newcastle Sales Team | Blank |
| Ben Carter | Yes | System Administrator | Salesforce | Newcastle Sales Team | 02/09/2026 |

The LoginHistory query for Jack and Mia returned no records.
The Opportunity ownership query for them also returned no records.

Their zero Opportunity ownership has a documented explanation:
[CF-04](cf-04-interim-custodianship.md) records the transfer of
221 Opportunities from each user to admin custody on 02/09/2026.
It is not evidence that their business responsibilities have ended.

Licence usage on 18/09/2026:

| Licence | Total | Used | Available |
|---|---:|---:|---:|
| Salesforce | 4 | 4 | 0 |
| Salesforce Platform | 6 | 1 | 5 |

### Recommendation and decision requested

Retain Jack and Mia's current access pending confirmation of their
responsibilities and onboarding needs. Blank login fields and the
custody transfer do not establish that their licences are unnecessary.

Withdraw the original recommendation to downgrade them based on
non-use, and the assumption that read-only duties alone establish
Platform suitability. Any proposed licence change requires a review
of the specific access needed and an approved decision.

The CF-03 purchase decision is already recorded; this review does not
reopen it or assume that additional licences have become available.

### Proposed message to Marcus — not sent

Marcus, the 18 September review shows Jack and Mia are active Salesforce
users with assigned sales roles, but both have blank Last Login fields
and the LoginHistory query returned no records. Their previously held
442 Opportunities were transferred to admin custody under CF-04 on
2 September, which explains their current zero ownership.

Could you confirm their expected Salesforce duties and who should
follow up on their onboarding or login barriers? I recommend retaining
their current access while those needs are confirmed; I am withdrawing
the earlier downgrade recommendation based on non-use alone.

## Accounts that are not people — retain, do not touch

| User | Type | Why it exists |
|---|---|---|
| Automated Process | AutomatedProcess | Platform-owned. Executes automation. |
| System (`automatedcase@…`) | AutomatedProcess | **Created 18/08 15:11** — this appeared when Automated Case User was reassigned during the Ticket 1.1 deactivation. Expected, not an intruder. Noted so nobody flags it later as an unexplained account. |
| Platform Integration User | CloudIntegrationUser | Platform-owned. |
| Data.com Clean | AutomatedProcess | Platform-owned. |
| Chatter Expert | CsnOnly | Chatter Free licence, costs nothing. |
| Integration User | Standard (Analytics Cloud Integration) | Analytics licence, not a Salesforce one. |
| Security User | Standard (Analytics Cloud Security) | Analytics licence, not a Salesforce one. |

None of these consume a Salesforce licence. Deactivating them breaks platform
features and recovers nothing.

## Already actioned

| User | Status | Note |
|---|---|---|
| OrgFarm EPIC | **Deactivated 19/08** | See [ticket-1.1-licence-recovery.md](ticket-1.1-licence-recovery.md). Three automated logins via `orgfarm_app_1`, no interactive human session. |

## Method, so this can be re-run

```sql
-- Who is holding what, and when did they last actually log in
SELECT Name, Username, Profile.Name, UserType, IsActive, LastLoginDate, CreatedDate
FROM User ORDER BY IsActive DESC, LastLoginDate DESC NULLS LAST

-- Licence position
SELECT Name, TotalLicenses, UsedLicenses FROM UserLicense WHERE TotalLicenses > 0

-- Blank LastLoginDate is a summary field; LoginHistory is the evidence
SELECT LoginTime, UserId, Application, Status, SourceIp
FROM LoginHistory ORDER BY LoginTime DESC
```

`LastLoginDate` on the User record is a convenience field. When a deactivation or
an audit is on the line, read `LoginHistory` — it shows *how* they logged in
(Browser vs. CLI vs. a provisioning app), which is usually the question that
actually matters.

## Send status — 18/09/2026

The original drafting TODO is resolved: the revised message asks
Marcus to confirm duties and onboarding needs, and recommends
retaining current access pending that decision.

**Status: Draft ready for Hemayet's send decision; not sent.**
No manager response or approval is recorded by this update.
No Salesforce users, licences, permissions or records were changed.
