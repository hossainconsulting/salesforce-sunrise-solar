# CF-04 — Interim custodianship of 666 Opportunities

**SunRise Solar · Org `sunrise` · 02/09/2026 · Owner: Hemayet Hossain**
**Status: EXECUTED 02/09/2026. Temporary by design, with a stated end.**

**Review 21/09/2026:** The live ownership query returned 890 Opportunities,
all owned by Hemayet Hossain. Jake remains active on Chatter Free.
Interim custody remains pending handover, with its review due 30/09/2026.

The pre-custody CSV was checked: 890 rows, including 666 unique IDs
originally owned by EPIC, Jack and Mia. That subset contains 112 open
records worth $1,421,184 in the 02/09 snapshot. Current stages and amounts,
and individual record continuity, were not checked. Tables and execution
figures below remain dated historical evidence.

This review made no Salesforce changes and sent no message.

---

## Why this document exists

Marcus approved holding the unowned pipeline under the admin's name until Jake is
licensed. He attached one condition, and it is the reason for this file:

> *"Jake inherits all 666, the moment his licence lands. They're his team's deals; they
> should never have been anywhere else. Until then hold them under your name **as declared
> custodian, written down** — **I don't want to discover in November that the admin quietly
> owns the pipeline.**"*
>
> — Marcus Neil, `FeedComment 0D7gK000000CH3VSAW`, 01/09/2026

**The word that matters is "quietly".** He did not object to the admin holding the
pipeline; he objected to it happening without a record and without an end. This document
is the record. The end condition is below.

---

## What is held

Read from the org on 02/09/2026.

| Current owner | Opportunities | Open | Open value | Why it cannot stay |
|---|---|---|---|---|
| **OrgFarm EPIC** | 224 | 38 | **$481,280** | **Deactivated 19/08.** Cannot be assigned work, cannot be emailed, cannot action anything |
| Jack Nguyen | 221 | 37 | $466,560 | Never logged in |
| Mia Kelly | 221 | 37 | $473,344 | Never logged in |
| **To be held** | **666** | **112** | **$1,421,184** | |

For context, the admin **already** owns 224 Opportunities (38 open, $477,696) from the
seed load. **After the transfer the admin owns all 890 in the org.** That is the fact
Marcus wants visible, and stating it plainly here is the whole point of the file.

---

## What "custodian" means, and what it does not

**Custody is safe-keeping, not working the deals.**

| The custodian does | The custodian does not |
|---|---|
| Hold ownership so records are reachable and reportable | Progress, re-date or close any Opportunity |
| Keep them out of a deactivated user's hands | Contact any customer about them |
| Transfer them onward on the trigger below | Forecast on them as though they were being worked |

**Nothing in this pipeline is being sold.** 112 open Opportunities worth $1,421,184 sit
with an administrator who is not a salesperson. **Custody makes them reachable; it does
not make them worked**, and any forecast that counts them as active is wrong for the same
reason it was wrong when they sat with EPIC.

> ### While custody lasts, exclude these 112 from any pipeline number that leaves the org
>
> **The true figure lives in the table above, not in the Owner field.** After the transfer
> the admin owns all 890 Opportunities, so anything grouped or filtered by owner will
> silently fold **112 unworked deals worth $1,421,184** into the admin's line and read as
> real pipeline. **Board packs, forecasts and the Monday email take the custody figure
> from this document.**
>
> This is the difference between custody being documented and the documentation being
> usable. A record nobody can derive the right number from is the 2024 duplicate list
> again — present, correct, and not preventing anything.

---

## The end condition

> **Custody ends when the records leave the admin, on the day Jake's Salesforce licence is
> provisioned.**

Marcus approved buying three licences (CF-03) on 01/09 — two hires
and Jake. Approval to buy does not establish purchase or provisioning.
The 21/09 user query shows Jake still on Chatter Free, so the
Salesforce-licence handover trigger has not been met.

**What is not settled is where they land.** Whether Jake holds all 666 as a distribution
stage, or they go directly to reps under a staffing plan, is **Marcus and Jake's call,
raised 02/09/2026** and open at the time of writing. This document deliberately does not
record the weaker plan as a settled fact while it is being questioned — see below.

**Review date: 30/09/2026.** If custody has not ended by then, this arrangement has
outlived its justification and goes back to Marcus as a fresh escalation — not as a
renewal. **November is the date he named as the failure case, and a September review is
what stops it reaching one.**

## The last hop is a second custody stage, not an end state

Marcus said *"they're his team's deals."* **That is an argument about whose book they
belong to, not about whose name goes in the Owner field.** 666 records under one manager
is EPIC's concentration with a pulse.

**But there is no third option hiding here.** On licence day there are still **zero
staffed reps** — the two hires arrive on the same licences, and nobody else in the org
sells. Someone singular receives them, and **Jake is the least-wrong someone.**

So the real question is not Jake-versus-team. It is **whether Jake's ownership is treated
as an end state or as a second custody stage** — and it must be the second, carrying the
same furniture this one does:

| | Admin custody (now) | Jake custody (licence day) |
|---|---|---|
| Named holder | Hemayet | Jake |
| Stated line | Holds, does not work | **Distributes; the deals get worked by whoever receives them** |
| Review date | 30/09/2026 | **To be set when it starts** |
| Written down | This document | Must be, before the transfer |

**Otherwise CF-04 closes by moving the problem one desk over and deleting the paperwork
that made it visible.** Put to Marcus 02/09 as a refinement to his instruction, not a
reopening of it. **Nothing changes before licence day under either answer**, which is why
today's transfer proceeds without waiting on it.

## Audit hooks

- **Register:** CF-04, with this file linked
- **Build log:** dated entry with the ownership figures as read on 02/09
- **Evidence:** `evidence/week-02/cf-04-pre-custody-ownership.csv` — who owned what
  before the transfer, so the original distribution is recoverable
- **The org itself:** every transferred record's `LastModifiedDate` marks the date, and
  the transfer is one script, re-runnable in reverse from the CSV

**None of this is hidden, and none of it is permanent.** Both were Marcus's conditions.

---

## Executed 02/09/2026

| | |
|---|---|
| Transferred | **666** — EPIC 224, Jack 221, Mia 221 |
| Admin owns now | **890 of 890** |
| **Opportunities on inactive users** | **0** — was 224 |
| Evidence | `cf-04-pre-custody-ownership.csv` · `cf-04-post-custody-ownership.csv` |
| Raised with Marcus | Chatter, 02/09 — the staging question above |

### ⚠️ EPIC is not clear — 23 records remain

This ticket was framed as *"666 unowned Opportunities"*, but the EPIC problem was always
**247 records on a disabled user**. The transfer moved the Opportunities only.

| Still owned by the deactivated `OrgFarm EPIC` | |
|---|---|
| EmailTemplate | **13** |
| Solution | **10** |
| **Total** | **23** |

**224 of 247 solved, not 247.** They carry no pipeline value and block nothing, which is
exactly why they will be forgotten — the same reason the 224 sat unnoticed for two weeks
while everyone discussed the licence decision. **Raised as its own item rather than
folded into a closed ticket.**
