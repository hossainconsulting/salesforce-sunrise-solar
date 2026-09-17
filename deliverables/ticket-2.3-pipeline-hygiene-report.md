# Pipeline hygiene report

**Ticket 2.3 · For Jake, cc Marcus · 26/08/2026 · Org `sunrise`**

> "Marcus wants a forecast number off me by Friday and I don't trust what's in
> Salesforce. There's stuff in there from months ago that's definitely dead. Can you
> tell me what's real?" — Jake, Thursday

---

## ① The number

**$702,336 of your open pipeline is sitting on a Close Date that has already passed.**
That is **37.0%** of the $1,898,880 open pipeline, across **56 Opportunities**.

Every one of them has Forecast Category `Pipeline`, so every one is in the forecast
you are about to quote. Verified, not assumed.

**Nothing has been changed.** This document is recommendations. You execute on your
own pipeline.

### One correction to your email

You said *"stuff in there from months ago that's definitely dead."* Neither half is
quite right, and the difference matters:

- **Nothing is from months ago.** The oldest Close Date is 01/07/2026 — 56 days.
  Not one Opportunity is more than 90 days past.
- **Nothing in the data says "dead".** There is no activity history in this org at
  all (see §③). Past its date is all we can actually observe.

---

## ② The number moved while I was writing this

The brief was verified at **51** on 21/08. I measured **55** on 25/08. It is **56**
today.

| Date | Stale opps | Value |
|---|---|---|
| 21/08 | 51 | — |
| 25/08 | 55 | $692,352 |
| 26/08 | **56** | **$702,336** |

Overnight, *Olivia Campbell Residence – 13.2kW Rooftop Solar* ($9,984, Qualification,
Close Date 25/08) crossed the line on its own. Nobody touched it.

**This is the whole argument for §⑤ over §④.** A list triaged by hand is wrong again
the next morning. A further **31 open Opportunities have a Close Date inside the next
30 days** and will arrive in this report as they pass.

**Stated honestly:** the close dates in this org run *exactly* one per calendar day
from 01/07 to 25/08 with no gaps — 56 days, 56 records. So the mechanism is real, but
the tidy "one a day" rate is a property of how the sample data was generated, not a
measured SunRise trading rate. Do not quote the rate. Do quote the direction.

---

## ③ The triage rule had to be changed, and here is why

The rule I was given sorts every Opportunity three ways:

| Recommendation | Criterion as written | Records it selects here |
|---|---|---|
| CLOSE | Close Date >90 days past **and** no activity 60+ days | **0** |
| RE-DATE | activity within 30 days | **0** |
| ASK OWNER | everything in between | **all 56** |

Both criteria depend on things this org does not contain:

- **There is no activity history anywhere.** `LastActivityDate` is null on all 890
  Opportunities. There are 0 Event records, and 0 Tasks attached to any Opportunity.
  (The org's 26 Tasks are all ones I created during Ticket 2.1.) Activity is
  unmeasurable, so CLOSE and RE-DATE both select nothing.
- **Nothing is more than 90 days past close.** The maximum is 56 days.

So the rule as approved produces one bucket containing everything, which is not a
triage.

### Triage aligned to the approved 30-day threshold

Marcus confirmed “30 days. Kill the 14” on 01/09/2026.
This section was aligned on 18/09/2026; figures below use the
original **26/08/2026 snapshot**, not current Salesforce totals.

| Recommendation | Criterion: days past Close Date | Records | Value |
|---|---|---:|---:|
| **CLOSE** | More than 90 days past; requires evidence before closure | **0** | **$0** |
| **ASK OWNER** | More than 30 days, up to 90 days past | **26** | **$323,840** |
| **RE-DATE** | 1–30 days past; confirm a realistic date with the owner | **30** | **$378,496** |

These are triage recommendations, not instructions to change records
automatically. The 14-day split is superseded.

Decision and report-change evidence:
[CF-05 — executed 01/09](decisions-received-marcus.md#cf-05--executed-0109).


CLOSE is deliberately left at 90 days rather than lowered to make it select
something. **I am not recommending that a single Opportunity be closed**, because
nothing in this data supports calling any of them dead. If you want a CLOSE list, the
honest way to get one is to make some calls, not to move a threshold.

Per [sop-escalating-rule-changes.md](sop-escalating-rule-changes.md), this change went
to you and Marcus before I applied it, not in the write-up afterwards.

---

## ④ The recommendation you cannot act on

**42 of the 56 — $515,584, or 73% of the stale value — are owned by someone who
cannot be asked anything.**

| Owner | Opps | Value | Status |
|---|---|---|---|
| OrgFarm EPIC | 15 | $178,432 | **Deactivated 19/08 in Ticket 1.1** |
| Mia Kelly | 14 | $180,992 | **Has never logged in** |
| Jack Nguyen | 13 | $156,160 | **Has never logged in** |
| Hemayet Hossain | 14 | $186,752 | Me. The admin, not a salesperson |
| **Total** | **56** | **$702,336** | |

**Not one of these Opportunities is owned by a working salesperson.** "ASK OWNER" is
the recommendation for 42 of them and there is no owner to ask.

### The OrgFarm EPIC problem is much larger than these 15 records

The 15 stale Opportunities owned by OrgFarm EPIC are the part visible from this
report. When I ran a full ownership scan across **all 144 objects in this org that
carry an owner**, the deactivated account turned out to still own **247 records**:

| Object | Records | |
|---|---|---|
| Opportunity | **224** | **38 still open, worth $481,280** — plus 186 closed worth $2,235,746 |
| EmailTemplate | 13 | |
| Solution | 10 | |

**$481,280 of open pipeline — 25% of everything SunRise has open — is owned by a user
who was switched off a week ago.** The $178,432 in the table above is only the portion
that is also past its close date.

Ticket 1.1 deactivated that account on 19/08 to recover a Salesforce licence. It
cleared six system *references* first — Case settings, lead assignment rules,
escalation rules, Web-to-Lead, the Default Workflow User — one at a time, because
**Salesforce refuses to deactivate while those exist.** It never mentioned record
ownership, because record ownership does not block deactivation.

That is the shape of the failure worth remembering: **the org enforces the things that
would break itself, and is silent about the things that break your data.** Anything
Salesforce blocks you on, you will find. Anything it does not, you only find if you go
looking.

**Fixed in the SOP, not just noted.**
[sop-user-deactivation.md](sop-user-deactivation.md) is now v1.1 with a hard
owned-records gate before Step 5, backed by
[`seed/check-owned-records.apex`](../seed/check-owned-records.apex), which enumerates
every owner-bearing object instead of relying on a hand-written list. The v1.0 list
named four objects; **two of the three EPIC actually holds were not on it and never
would have been.**

**Before any of this can be triaged, the 42 need reassigning to a real rep** — and
separately, EPIC's other 209 records need a home. That is a decision for you and
Marcus, not something I should do unilaterally.

---

## ⑤ The one-line rule, so you can do this yourself next quarter

> **Any open Opportunity whose Close Date is more than 30 days past gets re-dated or
> closed by its owner within a week, or it is closed lost with the reason "stale".**

Applied to the 26/08/2026 snapshot, that rule selects
**26 Opportunities worth $323,840**.

The standing rule and triage now use the same 30-day threshold,
as confirmed by Marcus on 01/09/2026. The former 14-day
chase-priority split is superseded. Counts here refer to the
26/08/2026 snapshot.

---

## ⑥ Set up so it nags you automatically

**Report:** *Pipeline Hygiene - Stale Open Opps*, folder **SunRise Ops**
(Id `00OgK00000Dh8inUAB`). Filters recorded after the 01/09/2026 change:
`Closed = false AND Close Date < N_DAYS_AGO:30`, sorted
oldest first. **This is now the only Pipeline Hygiene report in the org** — three
near-identical copies from parallel builds were deleted on 26/08 so there is no
ambiguity about which report the Monday email refers to.


### Forecast figures from the original snapshot

**Historical figures:** the amounts below describe the 26/08/2026
report with its former `Close Date < TODAY` filter. They are not
totals for the revised 30-day report. Rerun that report and record
the run date before quoting updated figures.

The report carries two totals, and the difference matters more than either:

| | |
|---|---|
| Amount (raw) | **$702,336** |
| **Expected Revenue** (Amount × Probability) | **$188,224** |

Raw Amount treats a Prospecting deal at 10% the same as one at 60%. **$188,224 is the
probability-weighted number**, and it is the more defensible figure for a board pack.
Both are on the report so nobody has to recompute it.

*(Probability and Expected Revenue came from Hemayet's own UI-built version of this
report; they were merged into the canonical one before the duplicates were removed.)*

**Subscription: live.** Weekly, **Mondays at 8am**, to Hemayet Hossain, Jack Nguyen
and Mia Kelly. The SunRise Ops folder is shared with Jack and Mia at View access, so
the report opens for them when the mail lands.

Two honest caveats on that subscription:

1. **You are not on it, because you do not have a user account in this org.** Nor
   does Marcus. Jack Nguyen and Mia Kelly are subscribed as the closest available
   stand-ins. Salesforce report subscriptions can only target users, roles or groups
   that exist — so this cannot be pointed at you until you have a licence, which is
   the same decision that has been outstanding since Week 1.
2. **Both stand-ins have never logged in**, and all three recipient addresses are
   plus-addressed aliases on one Gmail account. The nag currently arrives in one
   inbox. In a production org this is the check that matters: a subscription to
   someone who never signs in is a control that looks green and does nothing.

**Upgrade path, not built today:** a record-triggered Flow that emails the owner when
an Opportunity's Close Date passes while it is still open — the nag reaches the person
who can act instead of a weekly digest reaching a manager. Deliberately deferred to
around Week 5; a weekly report costs nothing to maintain and a Flow has to be owned.

---

## ⑦ The data debris, while I was in there

### The blank Service Region — the brief's fix is not executable

There is exactly one Account with a blank `Service_Region__c`. It is
**"Sample Account for Entitlements"** (`001gK00001Jx11eQAB`).

It is not a SunRise customer. It is Salesforce stock sample data, created 12/08/2026 —
five days *before* the SunRise seed import — and it holds 0 Opportunities, 0 Contacts,
0 Cases and 1 stock Entitlement.

The instruction was *"fix it from its billing city."* **It has no billing city, and no
billing street either.** There is nothing to derive a region from.

**I have not changed it, and I recommend it is not given one.** Assigning a service
region to a stock demo record would be inventing data to make a report look tidy —
the same instinct that produced the merges Ticket 2.1 had to flag. It should also not
be deleted: the attached Entitlement is stock configuration that would go with it.

**The real fix for "it will break a regional report later" is to exclude stock sample
records from regional reports**, not to give one a region. Current distribution:

| Region | Accounts |
|---|---|
| Sydney | 28 |
| Newcastle | 12 |
| Wollongong | 10 |
| *(blank — stock sample)* | 1 |
| **Total** | **51** |

### The phoneless accounts — 38 is now 1

The brief flags **38 Accounts with no Phone** as a backlog item. That figure was true
of the 301-record org. **After Ticket 2.1's merges it is exactly 1** — and it is the
same stock sample record above. Every real SunRise account now has a phone number.

The irony the brief asks me to put to Marcus therefore mostly resolved itself: phone
is a dedupe key under the Ticket 2.2 rules, so phoneless records would be invisible to
it — but there is only one, and it is not a customer.

**The caveat worth keeping is the opposite one, and it is real.** Ticket 2.2 already
found that **zero Accounts in this org share a phone number**, so the phone rule
catches nothing on its own; the `Account_Household_Match` rule on name + billing street
is what actually does the work. Phone coverage is not the exposure. Duplicate *detection
on a field nobody shares* is.

### Opportunity names still carry the old naming convention

Ticket 2.2's naming standard applies to Accounts. Opportunity names still embed the
old form — the Account "Amelia Martin" carries an Opportunity called *"Amelia Martin
Residence – 13.2kW Rooftop Solar"*. Cosmetic today, but it will confuse anyone
searching by name. Backlog, not a fix for this ticket.

---

## ⑧ What I did not do

- **Closed nothing, re-dated nothing, reassigned nothing.** The trap in this ticket is
  mass-closing 51 stale-looking Opportunities; the pipeline and the relationship
  history go with them, and some have a lazy owner rather than a dead deal.
- **Did not lower the CLOSE threshold** to make the recommendation column look
  complete.
- **Did not invent a Service Region** for the sample account.
- **Did not build the Flow.**

## ⑨ Open, and needing a decision

1. **Reassign the 42 ownerless Opportunities ($515,584)** before triage — 15 of them
   from a user who was deactivated a week ago.
2. 2. **Resolved 01/09/2026:** Marcus selected 30 days as the single
   standing threshold. Documentation aligned on 18/09/2026.
3. **Jake needs a user account.** Until then the weekly nag cannot reach him. Fourth
   item blocked on the Week 1 licence decision.
4. **`sop-user-deactivation.md` needs an owned-records gate** so the EPIC situation
   cannot recur.
5. ~~Four near-identical "Pipeline Hygiene" reports~~ **Done 26/08** — three
   duplicates and a stray folder deleted; one canonical report remains, subscribed.
6. **EPIC's remaining 209 records need an owner** — 186 closed Opportunities,
   13 EmailTemplates, 10 Solutions, beyond the 38 open ones.

---

## Per-Opportunity triage

56 rows. Snapshot 26/08/2026. Full export with record Ids:
`evidence/week-02/stale-open-opportunities.csv`.

| Account | Opportunity | Owner | Stage | Amount | Close Date | Days past | Recommendation | Owner note |
|---|---|---|---|---|---|---|---|---|
| James Nguyen Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Prospecting | $8,960 | 2026-07-01 | 56 | **ASK OWNER** | owner deactivated |
| Sophie Wilson Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $11,776 | 2026-07-02 | 55 | **ASK OWNER** | owner never logged in |
| Benjamin Walker Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Qualification | $16,000 | 2026-07-03 | 54 | **ASK OWNER** | owner deactivated |
| Sarah Barnes Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Needs Analysis | $12,416 | 2026-07-04 | 53 | **ASK OWNER** |  |
| Joshua Patel Residence | 6.6kW Rooftop Solar | Jack Nguyen | Id. Decision Makers | $16,640 | 2026-07-05 | 52 | **ASK OWNER** | owner never logged in |
| Sienna Lewis Residence | 13.2kW Rooftop Solar | Mia Kelly | Prospecting | $13,056 | 2026-07-06 | 51 | **ASK OWNER** | owner never logged in |
| Thomas Hughes Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Id. Decision Makers | $9,472 | 2026-07-07 | 50 | **ASK OWNER** | owner deactivated |
| Hannah Smith Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $12,288 | 2026-07-08 | 49 | **ASK OWNER** | owner never logged in |
| Daniel Clark Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Needs Analysis | $16,512 | 2026-07-09 | 48 | **ASK OWNER** | owner deactivated |
| Zoe Foster Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Id. Decision Makers | $12,928 | 2026-07-10 | 47 | **ASK OWNER** |  |
| James Nguyen Residence | 6.6kW Rooftop Solar | Jack Nguyen | Prospecting | $9,344 | 2026-07-11 | 46 | **ASK OWNER** | owner never logged in |
| Ruby Harris Residence | 13.2kW Rooftop Solar | Mia Kelly | Id. Decision Makers | $13,568 | 2026-07-12 | 45 | **ASK OWNER** | owner never logged in |
| Liam Bennett Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Needs Analysis | $9,984 | 2026-07-13 | 44 | **ASK OWNER** | owner deactivated |
| Jessica Silva Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Qualification | $14,208 | 2026-07-14 | 43 | **ASK OWNER** |  |
| Joshua Patel Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Id. Decision Makers | $9,216 | 2026-07-15 | 42 | **ASK OWNER** | owner deactivated |
| Sienna Lewis Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Prospecting | $13,440 | 2026-07-16 | 41 | **ASK OWNER** |  |
| Thomas Hughes Residence | 6.6kW Rooftop Solar | Jack Nguyen | Id. Decision Makers | $9,856 | 2026-07-17 | 40 | **ASK OWNER** | owner never logged in |
| Hannah Smith Residence | 13.2kW Rooftop Solar | Mia Kelly | Needs Analysis | $14,080 | 2026-07-18 | 39 | **ASK OWNER** | owner never logged in |
| Daniel Clark Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Qualification | $10,496 | 2026-07-19 | 38 | **ASK OWNER** | owner deactivated |
| Zoe Foster Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Qualification | $14,720 | 2026-07-20 | 37 | **ASK OWNER** |  |
| James Nguyen Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Prospecting | $9,728 | 2026-07-21 | 36 | **ASK OWNER** | owner deactivated |
| Ruby Harris Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Id. Decision Makers | $13,952 | 2026-07-22 | 35 | **ASK OWNER** |  |
| Liam Bennett Residence | 6.6kW Rooftop Solar | Jack Nguyen | Needs Analysis | $10,368 | 2026-07-23 | 34 | **ASK OWNER** | owner never logged in |
| Jessica Silva Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $14,592 | 2026-07-24 | 33 | **ASK OWNER** | owner never logged in |
| Jack White Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Qualification | $11,008 | 2026-07-25 | 32 | **ASK OWNER** | owner deactivated |
| Olivia Campbell Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Needs Analysis | $15,232 | 2026-07-26 | 31 | **ASK OWNER** |  |
| William Kowalski Residence | 6.6kW Rooftop Solar | Jack Nguyen | Id. Decision Makers | $11,648 | 2026-07-27 | 30 | **RE-DATE** | owner never logged in |
| Harper Thompson Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Needs Analysis | $14,464 | 2026-07-28 | 29 | **RE-DATE** |  |
| Daniel Clark Residence | 6.6kW Rooftop Solar | Jack Nguyen | Qualification | $10,880 | 2026-07-29 | 28 | **RE-DATE** | owner never logged in |
| Zoe Foster Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $15,104 | 2026-07-30 | 27 | **RE-DATE** | owner never logged in |
| James Nguyen Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Needs Analysis | $11,520 | 2026-07-31 | 26 | **RE-DATE** | owner deactivated |
| Ruby Harris Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Id. Decision Makers | $15,744 | 2026-08-01 | 25 | **RE-DATE** |  |
| Liam Bennett Residence | 6.6kW Rooftop Solar | Jack Nguyen | Prospecting | $12,160 | 2026-08-02 | 24 | **RE-DATE** | owner never logged in |
| Jessica Silva Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Qualification | $14,976 | 2026-08-03 | 23 | **RE-DATE** |  |
| Jack White Residence | 6.6kW Rooftop Solar | Jack Nguyen | Qualification | $11,392 | 2026-08-04 | 22 | **RE-DATE** | owner never logged in |
| Olivia Campbell Residence | 13.2kW Rooftop Solar | Mia Kelly | Needs Analysis | $15,616 | 2026-08-05 | 21 | **RE-DATE** | owner never logged in |
| William Kowalski Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Id. Decision Makers | $12,032 | 2026-08-06 | 20 | **RE-DATE** | owner deactivated |
| Harper Thompson Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Prospecting | $16,256 | 2026-08-07 | 19 | **RE-DATE** |  |
| Nathan Ryan Residence | 6.6kW Rooftop Solar | Jack Nguyen | Id. Decision Makers | $12,672 | 2026-08-08 | 18 | **RE-DATE** | owner never logged in |
| Ava Mancini | Ava Mancini Residence - 13.2kW Rooftop Solar | Mia Kelly | Needs Analysis | $9,088 | 2026-08-09 | 17 | **RE-DATE** | owner never logged in |
| Andrew Anderson Residence | 6.6kW Rooftop Solar | Jack Nguyen | Needs Analysis | $11,904 | 2026-08-10 | 16 | **RE-DATE** | owner never logged in |
| Ruby Harris Residence | 13.2kW Rooftop Solar | Mia Kelly | Id. Decision Makers | $16,128 | 2026-08-11 | 15 | **RE-DATE** | owner never logged in |
| Liam Bennett Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Prospecting | $12,544 | 2026-08-12 | 14 | **RE-DATE** | owner deactivated |
| Jessica Silva Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Id. Decision Makers | $8,960 | 2026-08-13 | 13 | **RE-DATE** |  |
| Jack White Residence | 6.6kW Rooftop Solar | Jack Nguyen | Needs Analysis | $13,184 | 2026-08-14 | 12 | **RE-DATE** | owner never logged in |
| Olivia Campbell Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $9,600 | 2026-08-15 | 11 | **RE-DATE** | owner never logged in |
| William Kowalski Residence | 6.6kW Rooftop Solar | Jack Nguyen | Id. Decision Makers | $12,416 | 2026-08-16 | 10 | **RE-DATE** | owner never logged in |
| Harper Thompson Residence | 13.2kW Rooftop Solar | Mia Kelly | Prospecting | $16,640 | 2026-08-17 | 9 | **RE-DATE** | owner never logged in |
| Nathan Ryan Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Id. Decision Makers | $13,056 | 2026-08-18 | 8 | **RE-DATE** | owner deactivated |
| Ava Mancini | Ava Mancini Residence - 13.2kW Rooftop Solar | Hemayet Hossain | Needs Analysis | $9,472 | 2026-08-19 | 7 | **RE-DATE** |  |
| Andrew Anderson Residence | 6.6kW Rooftop Solar | Jack Nguyen | Qualification | $13,696 | 2026-08-20 | 6 | **RE-DATE** | owner never logged in |
| Lily Kelly Residence | 13.2kW Rooftop Solar | Mia Kelly | Qualification | $10,112 | 2026-08-21 | 5 | **RE-DATE** | owner never logged in |
| David Doyle Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Needs Analysis | $14,336 | 2026-08-22 | 4 | **RE-DATE** | owner deactivated |
| Amelia Martin | Amelia Martin Residence - 13.2kW Rooftop Solar | Mia Kelly | Id. Decision Makers | $9,344 | 2026-08-23 | 3 | **RE-DATE** | owner never logged in |
| Oliver Murphy Residence | 6.6kW Rooftop Solar | OrgFarm EPIC | Needs Analysis | $13,568 | 2026-08-24 | 2 | **RE-DATE** | owner deactivated |
| Olivia Campbell Residence | 13.2kW Rooftop Solar | Hemayet Hossain | Qualification | $9,984 | 2026-08-25 | 1 | **RE-DATE** |  |

**Totals:** 56 Opportunities · $702,336 · CLOSE 0 ($0) ·
ASK OWNER 26 ($323,840) · RE-DATE 30 ($378,496).
