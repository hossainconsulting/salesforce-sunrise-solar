# Carry-forward tickets — Weeks 1 and 2

## Update 18/09/2026 — CF-05 documentation aligned

Aligned [Ticket 2.3](ticket-2.3-pipeline-hygiene-report.md) with
Marcus's approved 30-day threshold, replacing the 14-day triage split.

Verified all 56 rows against the 26/08/2026 snapshot:
ASK OWNER 26 ($323,840), RE-DATE 30 ($378,496), CLOSE 0 ($0).
Total: $702,336. Historical figures remain explicitly dated.

The outstanding documentation alignment is complete. The Monday
subscription dependency recorded in the decision log remains separate.
No Salesforce configuration or Opportunity records changed in this update.


## Update 18/09/2026 — CF-08 provisioning SOP completed

Completed the explanations in sections 1, 3 and 4 of the
[user-provisioning SOP](sop-user-provisioning.md), restoring v1.0.

The additions explain licence checks before provisioning, Campaign
access checks, and deliberate access selection with verification
before handover. Section 4 uses Ben's documented provisioning
experience; the attribution to Sarah was not substantiated in
the notes reviewed.

CF-08 is complete. No Salesforce configuration was changed.


## Update 17/09/2026 — CF-12 role assignments

CF-12 resolved for Jack Nguyen and Mia Kelly.
Phase 0 section 0.5 documents Jack as Sydney and Mia as Newcastle.

Created Sydney Sales Team under Director, Direct Sales and assigned
Jack. Assigned Mia to Newcastle Sales Team; Ben Carter remains there.
UI and SOQL verified all three users as active with the expected roles.

Both role definitions were retrieved. User assignments are separate
from role metadata. Record visibility and forecasting were not tested.
The broader hierarchy redesign remains open under CF-15.

See [verification details](cf-12-role-verification.md).

## Update 17/09/2026 — CF-26 list-view fix

CF-26 fixed in the org and verified as administrator.
Owner scope changed to All tasks; Subject contains
"Confirm service address". The view now returns six matching
tasks, all Completed, instead of 26 mixed tasks.
Existing sharing remains All users.

Metadata retrieved. Other-user record access remains untested.
See [verification details](cf-26-list-view-verification.md).

**Raised 27/08/2026 · Before Week 3 opens · Org `sunrise`**

Everything below was verified against the org today, not copied forward from notes.
Nothing here is "tidy-up": each item is either a commitment already made to someone,
a decision blocking other work, or a gap that will be found by the Week 10 audit if
it is not found sooner.

**20 tickets. 3 are overdue or due today. 5 are blocked on Marcus. 4 can only be
written by Hemayet.**

> **Revised 29/08/2026 — now 22 tickets.** CF-02 was worked and its control rebuilt, but
> the six confirmations are still not made, so it moves to blocked on Marcus rather than
> done, taking that group to **six**. CF-03 was put to Marcus as three costs.
>
> **And CF-22 was raised and closed the same day.** Marcus had no user account in this
> org — nor do Jake, Sarah or Zara — and there were no Chatter groups at all. **Every
> escalation written in Weeks 1 and 2 had been addressed to a channel that reached
> nobody.** Fixed: **Marcus Head** created on a free Chatter licence, `SunRise Ops —
> Escalations` built, and **all six notes sent**. Salesforce licences untouched at 4 of 4.
>
> **So "blocked on Marcus" now means what it says.** Before today it meant nobody had
> been asked. **Eight of the tickets below are genuinely with him as of 29/08.**
>
> **All eight are consolidated into one numbered list:**
> **[decision-list-marcus.md](decision-list-marcus.md)** — CF-01, CF-02, CF-03, CF-04,
> CF-05, CF-06, CF-07, CF-13, each with a recommendation and a note on whether it is
> reversible. Six prose posts carrying eight decisions was not answerable; this is eight
> short answers. **CF-04 is the one with no recommendation, because there is no name to
> give — and that is the finding, not a gap in the list.**
>
> ~~⚠️ **Marcus has not logged in and nothing has been read.** The channel is built and
> **unproven**. Confirm `marcus.head@sunrise.hossain.dev` actually received the welcome
> email before treating CF-22 as fully closed.~~
>
> **Superseded 01/09 — and the channel broke once more before it worked.** Three Marcus
> accounts were created on 29/08. **`Marcus Lee` and `Marcus Head` are both deactivated**,
> and deactivating Head **silently removed him from the group**, leaving it with one
> member. Every post from 29/08 still @mentions Head — **dead mentions, in a group the
> live Marcus was not in.** CF-22 recurring within hours of being closed.
>
> **Working channel as at 01/09: `Marcus Neil`** (`005gK00007HBpc5QAD`), Chatter Free,
> in the group, **and he has actually logged in** — the first proven login by anyone but
> Hemayet. His address is **`hossainconsulting+marcus@gmail.com`**, a real mailbox rather
> than the fictional `@sunrise.hossain.dev` domain, which is why this attempt worked and
> the previous two did not. A `START HERE` post with a live mention points him at the
> decision list.
>
> **CF-13 was re-scoped and moved from 🟡 READY to 🟠 BLOCKED.** Its premise was wrong —
> Ticket 2.1 never touched the Contact object — and **134 of 137 Contacts are unmerged
> duplicates.** The merge needs a survivorship rule from Marcus, so **CF-22 is now
> blocking build work, not only reporting.**

## ⏱ As at 07/09/2026 — Monday. The queue was read. Two records that read false were corrected.

**Week 4 opens today.** Week 3 closed clean, verified in the org this morning: **0 open
Tasks, 0 Duplicate Record Sets, 0 accounts flagged `Service_Address_Unconfirmed__c`.**

**CF-07 stopgap — the Monday queue was actually read.** On 05/09 Hemayet told Marcus in
writing *"my stopgap stands — I keep the Monday queue."* That was the first Monday.
**Checked 07/09: the queue holds 0 Duplicate Record Sets.** Nothing to work — and the
reading is the deliverable, not the working. **An empty queue that nobody opens and an
empty queue that someone opened are indistinguishable in the org and are not the same
control**, which is the whole of CF-07 and the whole of the 2024 failure. Recorded here
because a check that leaves no trace did not happen as far as the Week 10 audit is
concerned.

> **This is the first commitment in this project that was kept on the date it was made
> for.** Every previous dated commitment in this register either slipped (CF-01's freeze
> point), was cleared without the work (CF-02 on 29/08), or was overtaken (CF-20). Worth
> marking, and worth not over-reading: the queue was empty, so keeping it cost nothing.

**Marcus has still not answered, and has not seen Friday's correction.** His last login is
**05/09 11:01 — five minutes before** the correction comment was posted at 11:06. The three
decisions with him (CF-20 merges, CF-13 Bucket B, the three licences) all carry a Friday
11/09 fallback, so none are due. **Licences still read 4 of 4** — the three approved on
01/09 have not arrived, now six days.

### Two records that read true and were not — both corrected today

1. **The twenty CF-20 tasks asserted evidence their own answers refuted.** Every one still
   carried *"complementary phone formats… that pattern holds on all 10 pairs"*. It held on
   all 10 and predicted correctly on **3**. Eight carried a running tally from the moment
   they were answered; **twelve carried none and not one carried the final figure.**
   **Fixed:** dated closing note appended to all twenty, original paragraph struck but not
   deleted. Generated by
   [build-cf-20-closing-note.py](../scripts/build-cf-20-closing-note.py), which derives
   each verdict from the task's own answer text in the org and refuses to emit on a
   mismatch or a duplicate run.
2. **[cf-02-address-confirmations.md](cf-02-address-confirmations.md) still read
   `Status: OPEN` and `0 of 6`** two days after the work was finished, and still claimed
   **twice** that the discarded addresses were unrecoverable — false on three counts.
   **Fixed:** corrected header, both sentences struck in place, org-state table given a
   verified-07/09 column.

**The pattern both share is this register's own:** the work was done and the record of the
work was not updated, so the org and the repo each told a story that was two days stale in
opposite directions — the tasks over-claiming their evidence, the document under-claiming
the result.

**The `CF-02 · Address confirmations` list view was shared to all users this evening — and
that uncovered CF-26.** It was never only private: it has **no filter criteria at all** and
`filterScope: Mine`, so it renders all 26 Tasks in the org and shows every other user
nothing. **Nine days of notes called it "private" without once opening the definition.**

**Also this evening: CF-24's two recoverable bugs were planted and verified** — see the
[07/09 session file](sessions/2026-09-07.md). Weeks 5.1 and 10.1 are diagnosable cold.

---

## ⏱ As at 05/09/2026 — Jake exists. CF-07 does not unblock.

**Jake Mathewson** (`005gK00007VGhKTQA1`, `hossainconsulting+jake@gmail.com`) was created
at 20:46 on 05/09 and **logged in at 20:47** — a proven login on a real mailbox, added to
`SunRise Ops — Escalations`, and sent an orientation post (`0D5gK00000VRVAkSAP`).

**He is the last of the four people this register names to become reachable at all.**
Marcus is mentioned 139 times across the deliverables, Jake 75, Zara 28, Sarah 20; every
escalation of Weeks 1 and 2 was addressed to a channel none of them could receive. The
group now holds four members and **all four have actually logged in** — the first time
that has been true.

> ### ⚠️ He is Chatter Free. Do not read this as CF-07 closing.
>
> **Salesforce licences are still 4 of 4.** The *buy three* Marcus approved on 01/09 has
> not landed. Chatter Free lets Jake read this group and reply. It does **not** let him
> open an Account, an Opportunity, a Case, or a report.
>
> | Assigned to Jake | Status |
> |---|---|
> | **CF-07** — duplicate queue, ten minutes Mondays | **Blocked.** A Duplicate Record Set is a record; his licence cannot open one |
> | **Ticket 2.3** — his own pipeline report | **Blocked.** He cannot open a report. It still emails Jack and Mia, who have never logged in |
>
> **This register already wrote this down about Marcus in August** — *"what Chatter Free
> does not buy: he cannot open the CF-01 report, the pipeline report, or any Account or
> Opportunity."* Same licence, same wall, different person, five weeks later.
>
> **Recording "Jake's in" and closing CF-07 would be a control that reads satisfied and is
> not** — the fourth instance of the pattern this document exists to catch. The limit was
> therefore told to Jake directly in the orientation post, not only written here.

**Also open on him:** he has **no `UserRole`**, which places him alongside Jack and Mia in
CF-12 — records rolling up to nobody.

---

## ⏱ As at 03/09/2026 — current recount

**Daily session notes now live in [`sessions/`](sessions/), one file per day**
(`sessions/2026-09-03.md`). This register stays canonical: a session file records what was
worked, and anything decided in one is mirrored back here before the day closes. The
session file is the day; this document is the truth.

| Claim | Date set | **As at 03/09** |
|---|---|---|
| **CF-02** *"Hemayet makes the six calls this week"* | 01/09 | **Expires COB Fri 04/09 — tomorrow. 0 of 6 done** |
| **CF-20** twenty held Tasks fall due | 25/08 | **Tue 08/09 — 5 days, 3 working days** |
| CF-03 *"Unanswered for N days"* | 19/08 | **Clock stopped 01/09 at 13 days** — answered *buy three* |
| CF-11 sendable, unsent | 02/09 | **1 day** |

> **CF-02's commitment was made on a Tuesday and said "this week". That week ends
> tomorrow, and none of the six calls have been made.** This is CF-01's shape a second
> time — a commitment and the mechanism to deliver it set on the same day, pointing at
> different dates. The first time it was a surprise. It is not one now.
>
> **CF-20 remains the harder date:** the twenty pairs fall due Tuesday 08/09, they are the
> mechanism the **41–51 customer range** depends on, and CF-01's freeze point has already
> slipped once against exactly this date.
>
> **Still one job, still nobody rostered:** CF-02's six addresses, CF-20's ten pairs and
> CF-13 Bucket B's twenty-one groups are filed as three tickets. Two of the three now have
> dates inside five days.

### It is one job in a stronger sense than this register knew — 03/09

Building [cf-02-call-list.md](cf-02-call-list.md) established, against the evidence files:

**The six CF-02 households are the "J." halves of six of CF-20's ten pairs**
(verified in [`accounts-post-merge.csv`](../evidence/week-02/accounts-post-merge.csv)), and
**their Contact duplicate groups are CF-13's Bucket B**, carrying the same three-suburb
spread (verified in [`cf-13-post-merge.csv`](../evidence/week-02/cf-13-post-merge.csv)).

**One call to Oliver Murphy answers CF-02, CF-20 and CF-13 Bucket B for that household.**

| | Calls |
|---|---|
| The six — closes CF-02, 6 of CF-20's 10, and their Bucket B groups | **6** |
| CF-20's remaining four — Kowalski, Bennett, Young, Singh | **4** |
| Bucket B groups in households on neither list | ~11 |
| **Total** | **~21, not 37** |

**Ten calls close CF-02 and CF-20 outright.** Six are due tomorrow, four on 08/09.

### ⚠️ CF-02's premise is wrong — the discarded addresses are recoverable

[cf-02-address-confirmations.md](cf-02-address-confirmations.md) states **twice** that the
discarded addresses are unrecoverable from the org, and that is its stated reason the calls
are the only route. **All 23 pre-merge records for these six households are in
[`accounts-pre-merge-reconstructed.csv`](../evidence/week-02/accounts-pre-merge-reconstructed.csv)**,
captured 25/08 with every suburb and postcode intact — a file that same document cites.

> **This is CF-14 a second time.** CF-14 declared Week 1's evidence unrecoverable without
> opening the folder. Here a document declared the addresses lost while the file holding
> them sat in its own evidence links. **Both were written by the person who had already
> captured the evidence.**

**It does not remove the calls** — three candidate suburbs is not an answer, and no seeded
record is more authoritative than another. **It narrows them.** The street never varies
within a merge group; only `BillingCity`/`BillingPostalCode` do, across exactly three
values. The call is now a closed question — *Campbelltown, Chatswood or Penrith?*

**Call order is by contradiction, not alphabet: Murphy → Fitzgerald → Tran → Anderson →
Clark → Patel.** Murphy's retained suburb is contradicted by every other signal in the org,
and CF-20 had independently flagged him as the 1 of 10 pairs not sharing a suburb — two
methods, two tickets, the same record. **The ranking orders calls only. It must never
change an address:** counting duplicates in seed data is not evidence, and using it as such
is the substitution Ticket 2.1 §③/§④ already records as the mistake.

**CF-02's document has not been corrected** — the "unrecoverable" sentences still stand
there. Left visible rather than quietly edited, per this register's practice.

---

## ⏱ As at 01/09/2026 — recount the clocks before you quote them

> **Superseded by the 03/09 recount above. Left unaltered** — the counts below were correct
> when written, and rewriting them would falsify the log.


**Everything below dated 27/08 or 29/08 is correct as written.** These are the counts
that keep moving, recomputed today. **Nothing else in this document has been altered** —
a note dated 27/08 saying "today" means 27/08, and rewriting that would falsify the log.

| Claim, as written | Written | **As at 01/09** |
|---|---|---|
| CF-03 *"Unanswered for 8 days"* | 27/08 | **13 days** |
| CF-03 *"Ten days unanswered"* | 29/08 | **13 days** |
| CF-20 *"Tasks dated for a fortnight away"* | 27/08 | **6 days — as at 02/09** |
| *"3 are overdue or due today"* | 27/08 | Read the register, not the header |

> **The one that matters: CF-20's twenty held pairs fall due 08/09 — a week from today,
> not a fortnight.** They are the mechanism the **41–51 customer range** depends on, and
> **CF-01's freeze point has already slipped once against exactly this date.** If those
> twenty are not worked this week the same slip happens twice, and the second time it is
> not a surprise.
>
> Marcus was told, in the corrected Chatter post of 01/09, that 08/09 is a week away.

---

## How to read this

| Status | Meaning |
|---|---|
| 🔴 **DUE** | Dated commitment, at or past its date |
| 🟠 **BLOCKED** | Cannot proceed without a named person's decision |
| 🟡 **READY** | Actionable now, no decision needed |
| 🔵 **DEFERRED** | Deliberately not done, with a reason and a date |

---

## Register

| # | Ticket | From | Status | Blocked on |
|---|---|---|---|---|
| CF-01 | The customer-count freeze point passes today | W2 · 2.1 | ⚠️ **REOPENED 05/09 — the count is 48, a single number.** Sarah holds 41–51 from 02/09; 41 was never reachable | Marcus: tell Sarah |
| CF-02 | Six bucket-C address confirmations due today | W2 · 2.1 | ✅ **CLOSED 05/09 — 6 of 6 confirmed.** All prompted, all matched the record; no address changed. **Document corrected 07/09** — it still read `OPEN · 0 of 6`. **One tail: the list view is still private** | — |
| CF-21 | Open-task visibility — report built | W2 · CF-01 | ✅ **DONE 27/08** | — |
| CF-22 | Every escalation was addressed to a channel that cannot reach anyone | W1–W2 | ✅ **DONE 29/08** — channel built, six notes sent | — |
| CF-03 | Licence decision — Salesforce is 4 of 4 | W1 · 1.1 | ✅ **ANSWERED 01/09 — buy three.** Priya waits to October | Purchase |
| CF-04 | Who inherits the 666 unowned Opportunities | W2 · 2.3 | ✅ **CUSTODY EXECUTED 02/09** — 666 moved, declared | Jake's licence day |
| CF-05 | Stale-pipeline threshold: 30 days or 14 | W2 · 2.3 | ✅ **30 DAYS — report done 01/09** | Align the 2.3 doc |
| CF-06 | Confirm Block-on-create for duplicate accounts | W2 · 2.2 | ✅ **DONE 01/09 — keep blocking** | — |
| CF-07 | Roster an owner for the duplicate queue | W2 · 2.2 | 🟠 **STILL BLOCKED — Jake exists and is reachable, but Chatter Free cannot open a Duplicate Record Set.** **Stopgap ran 07/09: Hemayet read the Monday queue, 0 sets** | CF-03 purchase |
| CF-08 | ~~Four~~ **Three** unwritten sections in the provisioning SOP *(§7 closed by CF-09)* | W1 · 1.1 | 🟠 BLOCKED | Hemayet |
| CF-09 | The freeze-vs-deactivate paragraph | W1 · 1.2 | ✅ **WRITTEN 02/09** — SOP now v1.2 | — |
| CF-10 | Dormant-user review: the send decision | W1 · 1.2 | **DRAFT READY 18/09 — send decision pending** | Hemayet |
| CF-11 | Zara's reply: the three-sentence version | W1 · 1.3 | **DRAFT READY 18/09 — not sent** | Hemayet to send |
| CF-12 | Jack and Mia have no role | W1 · 1.1 | 🟡 READY | — |
| CF-13 | **134 of 137 Contacts are unmerged duplicates** *(re-scoped 29/08)* | W2 · 2.2 | ✅ **MERGED 01/09 — 137 → 98.** 21 groups held | — |
| CF-14 | ~~Week 1 evidence was never captured~~ **It was — and was declared lost unread** | W1 | ✅ **CORRECTED 01/09** | — |
| CF-15 | Role hierarchy redesign | W1 · 1.1 | **REQUIREMENTS NEEDED 18/09 — request drafted, not sent** | Marcus: structure and access requirements; Hemayet to send |
| CF-16 | Default ownership and automation-user review | W1 · 1.1 | **OWNERSHIP DECISIONS NEEDED 18/09 — request drafted, not sent** | Marcus: ownership and coverage; Hemayet to send |
| CF-17 | Placeholder Manager assignments for four users | W1 · 1.1 | **DEFERRED — verified 18/09; Manager decisions needed** | Marcus: confirm Manager assignments; linked CF-15 request not sent |
| CF-18 | `Marketing Campaign Access` permission set | W1 · 1.3 | 🔵 DEFERRED | CF-03 |
| CF-19 | 47 accounts still violate the naming standard | W2 · 2.2 | 🔵 DEFERRED | CF-20 |
| CF-20 | Ten middle-initial pairs, held for confirmation | W2 · 2.1 | ✅ **CLOSED 05/09 — all 10 answered, 3 days early.** 7 separate, 3 same household. **All 20 task records corrected 07/09** — they still asserted the phone-format evidence, which finished **3 for 10**. Merging on it would have been wrong 7 times | — |
| CF-23 | ~~23~~ **62 records owned by deactivated OrgFarm EPIC** — and it was 39 Flows nobody had counted | W2 · CF-04 | ✅ **CLOSED 02/09 · VERIFIED 03/09** — [sweep artifact](../evidence/week-03/cf-23-ownership-sweep-03-09.md): 185 of 187 confirmed zero, 2 unqueryable | — |
| CF-24 | **None of Phase 0's three planted bugs exist** — and Week 4.2's was deleted by Ticket 1.1 | P0 · §0.8 | ✅ **PARTLY CLOSED 07/09 · verified in the org** — Weeks 5.1 and 10.1 planted the same evening. **Week 4.2's is unrecoverable** and becomes a build, not a staged diagnosis | — |
| CF-26 | **The CF-02 list view has no filter at all** — and is `filterScope: Mine` | W2 · CF-02 | 🔴 **RAISED 07/09.** Sharing fixed; the real defect is underneath it. Described as "private" for nine days without opening the definition | Hemayet: what it should show |
| CF-25 | **150 leads, $180,000 of campaigns, nobody contacted** | W4 · 4.1 | 🔴 **RAISED 07/09** — 69 days, all `Open - Not Contacted`, all owned by the admin | Marcus: who works them |

---

# 🔴 Due now

## CF-01 — The customer-count freeze point passes today

**From:** Ticket 2.1 · **Owner:** Hemayet · **Due: COB today, 27/08/2026**

The build log records a commitment made to Marcus:

> *"Freeze point committed: ten initial-pairs resolved by COB Thursday 27/08/2026,
> ahead of the month-end board pack."*

**That is today, and it will not be met.** The ten pairs are deliberately HELD
(CF-20), and the Tasks that would resolve them are dated **08/09/2026** — twelve days
after the date promised to Marcus.

**These two dates have been inconsistent since 25/08 and nobody has noticed.** That is
the actual finding: the commitment and the mechanism to deliver it were set up on the
same day, pointing at different dates.

**The customer count therefore stays a range: 41–51 households.** That is defensible —
the reconciliation and the bounds are documented in the audit — but Marcus was told it
would be a single number by today.

**Action:** tell Marcus today, before he needs it, that the number stays a range and
why. Either move the freeze point to 08/09 to match the Tasks, or pull the Task due
dates forward. **Do not resolve it by merging the pairs on name similarity** — that is
the exact substitution Ticket 2.1 §③ and §④ already record as a mistake.

The cheap version is one line, today: *"The 41–51 range holds for the board pack — the
ten pairs need a phone confirmation and that lands 08/09, not today. Range with the
arithmetic behind it, or do you want me to chase the confirmations this week?"*

### Update 27/08, evening

**Note drafted:** [status-note-marcus-cf-01-freeze-point.md](status-note-marcus-cf-01-freeze-point.md)
— leads with the one-line Chatter message, states the 41–51 range with both
reconciliations, and says plainly that the date given on the 25th was never supported
by the Tasks created the same day. Two asks: range-or-chase for the count, and the
same question for CF-02's six addresses.

**Still open until Marcus replies.** The ticket moves to done when there is an answer,
not when the note is written.

**The read-side is now built — see CF-21.**

---

## CF-02 — Six bucket-C address confirmations due today

**From:** Ticket 2.1 · **Due: 27/08/2026** · **Status in org: 6 Tasks, all Not Started**

Six accounts were merged where the surviving address was chosen by **record age, not
evidence** — no won Opportunity existed to discriminate. Each carries a high-priority
Task: *"Confirm service address before next job — address chosen by record age during
dedupe."*

| Account | Surviving address |
|---|---|
| Andrew J. Anderson Residence | Campbelltown |
| Daniel J. Clark Residence | Campbelltown |
| Joshua J. Patel Residence | Penrith |
| Lucas J. Tran Residence | Chatswood |
| Samuel J. Fitzgerald Residence | Chatswood |
| Oliver J. Murphy Residence | Campbelltown |

**Why it matters more than a task date:** the discarded addresses are unrecoverable
from the org, and a wrong one sends a technician to the wrong house. The Tasks were
designed to be answered at the next customer contact rather than by an outbound
campaign — which is correct, but means they only close when someone rings.

**Action:** these were never going to self-resolve by a date. Either extend them
honestly, or make the six calls. Leaving six overdue high-priority Tasks sitting in
the org is how the 74 unread Duplicate Record Sets happened.

### Update 29/08 — worked, and the outcome is not what the org briefly said it was

**Full record: [cf-02-address-confirmations.md](cf-02-address-confirmations.md)**

**What happened first:** between 04:29 and 07:24 on 29/08 all six Tasks were marked
**Completed**. Checked against the org: **no address changed** — all six Accounts still
carried `LastModifiedDate` of 24/08 — and **no confirmation was recorded**, every closed
Task still holding its original comment reading *"Service address on this account was NOT
confirmed with the customer."* It was an administrative closure to clear an overdue date.

**The org therefore briefly held six Completed high-priority tasks whose own comments
said the work had not been done** — and the CF-01 report, built two days earlier to
surface exactly this, dropped from **6 due 27/08 to 0**. The instrument built to make the
problem visible was the instrument that stopped showing it.

**What was done about it, same day:**

1. **All six reopened** to `Not Started`, each carrying a dated note recording the
   closure and the reopening. The history is in the record, not only in a document.
2. **`ActivityDate` cleared on all six.** The invented 27/08 date was the root cause —
   this obligation has no date, it has a trigger. An invented date does not create
   urgency, it creates an overdue flag, and an overdue flag creates pressure to clear it.
3. **`Account.Service_Address_Unconfirmed__c`** built, deployed, FLS granted to the three
   human profiles, placed on `Account Layout` **immediately below Account Name**, and set
   `true` on the six. The control now sits on the Account in front of whoever books the
   job, and **cannot be cleared by closing a task.**

**Still 0 of 6 addresses confirmed.** Nothing on 29/08 changed that, and the ticket does
not close until six customers have been rung. **Blocked on Marcus** to roster who makes
the calls — the second ask in
[status-note-marcus-cf-01-freeze-point.md](status-note-marcus-cf-01-freeze-point.md),
still unanswered.

**One gap left open deliberately, named in the deliverable:** the new
`CF-02 · Address confirmations` list view was built as *"Only I can see this list view"*
— the identical defect corrected on the CF-01 report two days earlier. Left visible
rather than quietly corrected, because a defect repeated three days after it was fixed
is the more useful thing to notice.

---

## CF-22 — Every escalation was addressed to a channel that cannot reach anyone

**Raised 29/08 · Found while writing click-by-click steps to post CF-03 to Marcus**

**Marcus has no user account in this org.** Not inactive — absent. Neither do **Jake,
Sarah or Zara**. And there are **no Chatter groups at all**.

| Referenced in the deliverables | Has a user |
|---|---|
| Marcus (139 mentions) | **No** |
| Jake (75) | **No** |
| Zara (28) | **No** |
| Sarah (20) | **No** |

The only people who can receive a Chatter post here are Ben Carter, Jack Nguyen, Mia
Kelly and Priya Sharma — **three of whom have never logged in.**

**Five documents are affected**, each carrying a *"line to post now"* aimed at Chatter:

- `status-note-marcus-ticket-2.2.md` — *"this goes to Chatter the moment it is known"*
- `status-note-marcus-ticket-2.3.md` — same
- `status-note-marcus-cf-01-freeze-point.md`
- `status-note-marcus-cf-03-licence-decision.md`
- `cf-02-address-confirmations.md`

> **Correction, 29/08 (later):** this list originally read **six** documents and included
> `ticket-1.3-reply-to-zara.md`, citing *"use Chatter"* in it. **That was a misreading.**
> The phrase appears in a list of what **Priya** can do on a Platform licence — *"Can: log
> in, see Accounts and Contacts, run and build reports and dashboards, use Chatter"* — not
> in a delivery instruction. **Zara emailed in** (*"Zara, email, Wednesday · Subject:
> Campaign access"*) and the deliverable was always *"a three-sentence email reply"*.
> **Her channel was never Chatter and was never broken. Five documents, not six.**
>
> Worth noting how it happened: the word was grepped for and the hit was counted without
> reading the sentence around it. **That is the same shape as the failure this ticket
> describes** — a fact recorded correctly and then connected to the wrong thing.

And `sop-escalating-rule-changes.md` **mandated** the unreachable route: *"Post it where
the approver will see it. In this org that is Chatter on the record or the ticket."*

### It was never unknown — it was written down on 25/08

The build log, **25/08**, under Ticket 2.3 Phase 3:

> *"**Jake has no user account in this org, nor does Marcus.** Active users are Hemayet,
> Ben Carter, Jack Nguyen, Mia Kelly, Priya Sharma + 5 service accounts."*

**On that same day**, two other documents were written:

- `sop-escalating-rule-changes.md` **v1.0** — *"Post it where the approver will see it.
  In this org that is Chatter on the record or the ticket."*
- `status-note-marcus-ticket-2.2.md` — *"this goes to Chatter the moment it is known"*

**Three documents, one day, mutually contradictory.** The blocking fact was recorded in
the log, and the two documents that depend on it being false were written beside it.

**This is CF-01's shape exactly** — *"the commitment and the mechanism to deliver it were
set up on the same day, pointing at different dates, and nobody noticed."* Except this
one ran four days and cost every escalation of Weeks 1 and 2.

> **The failure is not observation. It is that a finding recorded against one ticket
> does not propagate to the others.** Ticket 2.3 needed Jake's missing account and wrote
> it down. The SOP needed Marcus's missing account and never asked. It is the same fact.

**Why this is worse than it looks.** Ticket 2.2's whole lesson was that Marcus learned
about a methodology change by reading the audit afterwards, and the fix was to tell him
at the moment of discovery. **The fix was written, followed, and delivered to nobody** —
and each note read as delivered, because a "line to post now" at the top of a document
looks like a dispatched message. This is the CF-02 pattern again in a different costume:
**a control that exists, is used, and produces a record saying it worked.**

### Channel built 29/08 — Marcus is now reachable

| | |
|---|---|
| **User** | **Marcus Head** · `005gK00007H4D0dQAF` · `marcus.head@sunrise.hossain.dev` |
| **Licence** | **Chatter Free** — costs nothing, 4,998 of 5,000 still free |
| **Group** | **`SunRise Ops — Escalations`** · `0F9gK000000YDsTSAW` · Private · members: Hemayet (Admin), Marcus (Standard) |

**Salesforce licences are untouched at 4 of 4 — this did not cost CF-03 anything.** The
org previously had **no Chatter groups at all**.

**A group rather than record feeds**, because a Chatter Free user **cannot open records**:
an @mention on an Account feed emails him text he cannot click through to. The group
reaches him; the record post remains the audit copy, which is the split SOP v1.1 makes.

**All five status-note Channel rows are now filled**, plus the CF-13 merge-rule request —
which is **the first approval request in this project with a working channel.**

> **What Chatter Free does not buy:** he cannot open the CF-01 report, the pipeline
> report, or any Account or Opportunity. He can read escalations and reply. Making him
> self-sufficient needs a Salesforce licence, which is CF-03, and would take the count to
> **5, not 4.**

**Done 29/08:** [sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) → **v1.1**.
The delivery instruction is replaced with a check — *confirm the recipient can receive it
before writing the line* — and every status note must now carry an explicit
**To / Channel / Audit copy** header instead of "the line to post now". Chatter stays as
the **audit copy** even when the recipient cannot receive it; the two jobs Chatter was
doing are now separated, because only one of them needs the recipient to exist.

### Sent 29/08 — the backlog is delivered

**Seven posts to `SunRise Ops — Escalations`, each with a rendered @Marcus Head mention.**
Posted oldest-first so the feed reads newest-at-top, with a `READ THIS FIRST` orientation
post created last so it sits above them:

| Post | Raised | Waiting on |
|---|---|---|
| Ticket 2.2 — Block-on-create, duplicate queue owner | 25/08 | Marcus |
| Ticket 2.3 — **"Hold the licence decision"** | 26/08 | Marcus |
| CF-01 — customer-count freeze point | 27/08 | Marcus |
| CF-02 — six unconfirmed addresses | 29/08 | Marcus |
| CF-13 — Contact merge rule, for approval | 29/08 | Marcus |
| CF-03 — licence decision as three costs | 29/08 | Marcus |

Each post is the **short SOP-form message** — four things, one paragraph — not the
document. The documents stay as the audit copy, which is the split SOP v1.1 defines. The
orientation post says plainly that they never reached him because he had no account and
nobody checked.

> **The ticket is closed. The decisions are not.** **Five of the six now wait on Marcus
> rather than on a channel** — which is a different and much better problem than the one
> this ticket described.

**One deliberately not sent:** `ticket-1.3-reply-to-zara.md`. **Zara's channel is email
and always was — she needs no Chatter account** (see the correction above). It was
recorded as blocked on CF-03, which was wrong: the draft is written *for* the unresolved
state and says so plainly.

> **What actually held it was a sentence that was not true.** The draft claims *"I've
> asked Marcus to decide between buying a licence or freeing one up"* — written 21/08,
> when Marcus had no account and no note had reached him. **It became true today.** It
> sat in a draft reply to a manager, as a statement of fact, for eight days.

**Only CF-11 remains** — the three-sentence version, which is Hemayet's to write. Zara's
email address is still recorded nowhere in this repo.

**This also lands on CF-03 option (c),** which commits to telling four people the hires
are unprovisioned: **HR, Sarah, Jake and the two hires. Three of those four have no user
account either.**

---

## CF-24 — None of Phase 0's three planted bugs exist

**Raised 07/09 while writing the Week 4 brief · Verified in the org, not inferred**

Phase 0 §0.8 says *"Build these now and forget how. In Weeks 4, 5 and 10 you diagnose them
cold."* **All three are absent.**

| Bug | For | In the org 07/09 |
|---|---|---|
| Web-to-Lead form, inactive auto-response, missing State field | **Week 4.2** | **Absent.** No `seed/webform.html`; all 150 leads have a State |
| `NSW Territory Routing`, entry-order bug | Week 5.1 | **Absent.** Only the stock `Standard` rule |
| Over-permissioned user + `Legacy Reporting Access` | Week 10.1 | **Absent.** No such perm set; no non-admin holds View All Data |

**Week 4.2's was not skipped — it was deleted.** Build log, **19/08**, Ticket 1.1:

> *"Removed the unused Web-to-Lead config referencing OrgFarm EPIC… Training artifact, no
> live lead capture. Accepted risk, noted."*

**Every word true.** It was unused, it did block EPIC's deactivation, and removing it was
right for Ticket 1.1. **It was recorded correctly and connected to nothing.**

> **CF-22's shape, third occurrence — a finding recorded against one ticket does not
> propagate to the others.** The first two cost escalations that reached nobody. **This one
> cost a future exercise**, which is why it went unnoticed for nineteen days: nothing was
> broken *yet*.

**Action, and the two halves have different deadlines:**

1. **Week 4.2 loses its cold diagnosis.** It becomes a *build* — Web-to-Lead done properly,
   auto-response **active** — with the three failure modes written up rather than staged.
   **Not recoverable**; do not stage a fake investigation with a known answer.
2. 🔴 **Plant the Week 5.1 and Week 10.1 bugs today, and do not write down how.** Five
   minutes each. Week 5 is one week out and Week 10 is six, so both cold diagnoses still
   survive — **but only if this is done before Week 5 opens.** If it waits, it goes the way
   this one did.

---

## CF-25 — 150 leads, $180,000 of campaigns, and nobody contacted

**Raised 07/09 · The largest unworked pile yet, and the only one that cost cash**

| | |
|---|---|
| Campaigns | **6**, all `Completed`, all ended by 30/06/2026 |
| Actual spend | **$180,000** |
| Leads generated | **150** — exactly 25 per campaign |
| **Contacted** | **0.** All 150 `Open - Not Contacted` |
| **Converted** | **0.** `NumberOfConvertedLeads` = 0 on all six |
| Owned by anyone but the admin | **0** |
| Days since the last campaign ended | **69** |

**Campaign ROI cannot be computed in this org.** Not "is poor" — cannot be computed. No
lead converted, so no Opportunity carries a `CampaignId`, so all six rank identically at
−100%. **Nothing here shows the campaigns failed; it shows that what happens after a lead
arrives was never run.**

> **The fifth instance of one pattern, and the first that was never even flagged.** The 74
> duplicate sets, CF-02's six addresses, CF-13 Bucket B's 21 groups and CF-07's queue all
> had *something* — an overdue task, an unread list. **These 150 had no control at all.**
> A campaign marked `Completed` for the thing that finished, beside 150 records marked
> `Open - Not Contacted` for the thing that never started. Both accurate. Never read
> together.

**Blocked on Marcus for the same question CF-07, CF-02 and CF-13 are blocked on** — who is
rostered to make contact — **arriving a fourth time on a fourth object.** Full treatment in
[week-04-build-brief.md](week-04-build-brief.md).

---

# 🟠 Blocked on Marcus

## CF-03 — Licence decision: Salesforce is 4 of 4

**From:** Ticket 1.1, raised 19/08 · **Unanswered for 8 days**

Verified today: **Salesforce 4 of 4 used. Salesforce Platform 1 of 6.**

**This now blocks five things:**

1. Two of the three Monday new hires (never provisioned)
2. Priya's Campaign access — Platform licences have no Campaign object at all
3. Jake having a user account, so he cannot receive his own pipeline report
4. `Marketing Campaign Access` permission set (CF-18)
5. Any resolution of CF-04

**And the cheapest proposed unblock is now known to be unsafe** — see CF-04. Deactivating
or re-licensing Jack and Mia was Week 1's recommendation; both variants damage data
until their pipeline moves.

### Update 29/08 — put to Marcus as three costs, not a question

**Note: [status-note-marcus-cf-03-licence-decision.md](status-note-marcus-cf-03-licence-decision.md)**

Ten days unanswered. Reframed so there is nothing left to decide *about* — only one of
three to pick. **All three are already being chosen from: (c) is what is running now.**

**(a) Buy two Salesforce licences.** Cost is money, and the note says plainly that **two
is the floor, not the number.** Counting what the org needs rather than what was asked on
the 19th — second Newcastle rep (Opportunity), Wollongong service tech (Case), Priya
(Campaign), Jake (a login at all) — **the real figure is four.** Two closes the ticket;
four closes the org.

**(b) Move someone to Platform.** Verified in the org today and it is far narrower than
previously stated. A Standard Platform User here can open **Account and Contact, and
nothing else** — the rest of the profile is consent and privacy plumbing. No Opportunity,
no Campaign, **no Case**, no Lead, no Solution. And **SunRise has no custom objects**, the
other thing a Platform licence normally buys.

> **New and it changes the option: the Wollongong service tech needs Cases, and Platform
> has none.** The one hire who looked like a Platform candidate is not one. (b) now fits
> a user whose entire job is Accounts and Contacts, and nobody on the list is that person.

**(c) Leave the hires unprovisioned and say so out loud.** Free, and it is the status quo.
**The cost is not the unprovisioned users — it is that the cost is being paid silently.**
If chosen deliberately it is defensible; chosen by not answering it is not, because the
people absorbing it do not know they are. Four notes drafted to send on the word: HR,
Sarah, Jake, and the two hires.

**(b) is explicitly NOT offered for Jack and Mia, and the note records that as a
reversal.** It was Week 1's recommendation. CF-04 has since shown both variants damage
data: Platform leaves each of them **owning 442 Opportunities ($939,904 open) their
licence cannot open** — the identical wall Priya is standing at with Campaigns, pointed
at the pipeline instead of a task list. Deactivating orphans the same 442. **CF-04 must
be answered first; it gates this ticket.**

**Also sharpened:** Jake having no user is no longer blocking one thing. It blocks the
pipeline report (2.3), the duplicate queue owner (CF-07) **and** the six CF-02 calls.
**Every open control in this org points at a man who cannot log in.**

---

## CF-04 — Who inherits the 666 unowned Opportunities

**From:** Ticket 2.3 · **The top blocker in the org**

| Owner | Opportunities | Open | Open value | Problem |
|---|---|---|---|---|
| OrgFarm EPIC | 224 | 38 | $481,280 | **Deactivated 19/08** |
| Jack Nguyen | 221 | 37 | $466,560 | Never logged in |
| Mia Kelly | 221 | 37 | $473,344 | Never logged in |
| **Total** | **666** | **112** | **$1,421,184** | |

EPIC also holds 13 EmailTemplates and 10 Solutions — **247 records on a disabled user.**

**Both routes out of CF-03 fail until this is done:** deactivating Jack and Mia orphans
442 Opportunities, and moving them to Platform leaves them owning an object their
licence cannot open (`Opportunity` has no `ObjectPermissions` row for Standard Platform
User — identical to the Campaign wall in Ticket 1.3).

**The uncomfortable part:** there is nobody obvious to hand them to. **Hemayet is the
only person who has ever logged into this org.** Ben, Jack, Mia and Priya all show
`LastLoginDate` = never. Ben Carter is the only unencumbered Standard User and he is
one Newcastle rep.

**Asked in [status-note-marcus-ticket-2.3.md](status-note-marcus-ticket-2.3.md). Not yet answered.**

---

## CF-05 — Stale-pipeline threshold: 30 days or 14

**From:** Ticket 2.3

| Threshold | Selects | Value | Where it came from |
|---|---|---|---|
| 30 days past close | 26 | $323,840 | The standing rule as drafted |
| 14 days past close | 42 | $535,424 | The chase-priority cut used in triage |

Both are defensible. **Running both is how numbers start drifting**, which is the
problem Ticket 2.3 exists to fix. One number, then the report, the rule and the Monday
email all align to it.

---

## CF-06 — Confirm Block-on-create

**From:** Ticket 2.2 · **Live in the org right now**

`Account_Duplicate_Rule_Phone` **blocks** on create. A rep entering a genuine new
customer whose phone was mistyped to match an existing record **cannot save.**

That cost lands on Jake's team, not on the admin. It is the right call — an alert
cannot stop a bulk import and a block can, which is how the 2024 mess arrived — but
Marcus owns the trade, not Hemayet. **Reversible to alert in one deploy.**

---

## CF-07 — Roster an owner for the duplicate queue

**From:** Ticket 2.2 · **The control that actually failed in 2024**

The queue is now **empty** — all 74 historical sets were archived and cleared on 26/08,
and all five duplicate rules are verified active, so it will start filling again with
real matches.

**An empty queue with nobody reading it is exactly the 2024 state.** Proposed: Jake,
Mondays, ten minutes. He is already the one who verifies a customer by ringing them.
Hemayet cannot roster Jake.

---

# 🟠 Blocked on Hemayet — these cannot be ghost-written

~~Seven~~ **Four** `✍️ TODO` markers remain across ~~four~~ **two** documents. They are
marked *"write this in your own words"* by design: an SOP in someone else's voice is not
yours to defend, and these are the paragraphs that show understanding rather than
button-knowledge.

> **Recounted 03/09** — 3 in [sop-user-provisioning.md](sop-user-provisioning.md)
> (lines 36, 64, 75) and 1 in [dormant-user-review.md](dormant-user-review.md) (line 81).
> **CF-09 and CF-11 closed theirs**; `sop-user-deactivation.md` and
> `ticket-1.3-reply-to-zara.md` now carry none. The "seven across four" figure was written
> 27/08 and had been true then.

## CF-08 — ~~Four~~ Three unwritten sections in the provisioning SOP

**File:** [sop-user-provisioning.md](sop-user-provisioning.md) §1, §3, §4
*(§7 closed by CF-09 on 02/09 — heading and file reference corrected 03/09)*

The document was reversioned **v1.0 → v0.9 DRAFT** on 26/08 so it no longer *claims*
to be finished. It goes back to v1.0 when these are written, not before.

## CF-09 — The freeze-vs-deactivate paragraph

**File:** [sop-user-deactivation.md](sop-user-deactivation.md) §"Freeze vs. deactivate"

**This is the highest-value item in the group.** That SOP went to **v1.1** on 26/08 with
a substantial new owned-records gate — and still carries a blank in the section the
Week 1 brief calls *"the part that shows whether you understand access management or
just know where the buttons are."*

The reasoning now exists in the org's own history — EPIC's 247 orphaned records are the
worked example. The paragraph is easier to write today than it was on the 19th.

## CF-10 — Dormant-user review: the send decision

**File:** [dormant-user-review.md](dormant-user-review.md)

**Updated 18/09/2026: Draft ready; Hemayet's send decision pending.**

Revised the recommendation using current User, UserLicense,
LoginHistory and Opportunity queries. Jack and Mia remain active
Salesforce users with assigned sales roles, blank LastLoginDate
fields and no LoginHistory records returned.

Their former 442 Opportunities were transferred to admin custody
on 02/09/2026 under CF-04. The current ownership query returned
no records for either user; this does not establish that their
licences are unnecessary.

The draft asks Marcus to confirm duties and onboarding needs,
recommends retaining current access pending that decision, and
withdraws the earlier downgrade recommendation based on non-use.

The drafting TODO is resolved. The message has not been sent,
and no manager decision is recorded. No Salesforce configuration
or records changed.

## CF-11 — Zara's reply: the three-sentence version

**File:** [ticket-1.3-reply-to-zara.md](ticket-1.3-reply-to-zara.md)

**Updated 18/09/2026: Three-sentence draft ready; not sent.**

The reply states Marcus's October 2026 budget decision for Priya's
additional licence. It confirms that her account exists without
claiming successful login or promising activation that morning.

Read-only verification on 18/09/2026 showed Priya active on
Salesforce Platform, Marketing User false and LastLoginDate blank.
Salesforce licences remain 4 of 4 used.

The recipient address and its recorded 02/09 delivery verification
are documented in the reply. Hemayet's send decision remains pending.
Campaign setup and testing remain outstanding; this documentation
update changed no Salesforce configuration or records.

---

# 🟡 Ready — actionable, no decision needed

## CF-12 — Jack and Mia have no role

**Verified today:** `UserRole` is null for both. Ben Carter has *Newcastle Sales Team*;
Jack and Mia have nothing, despite both holding a Salesforce licence and the title
*Sales Representative*.

**Consequence:** no role means their records roll up to nobody. Any future
forecast-by-manager, sharing rule or role-based report silently excludes 442
Opportunities.

**Not done unilaterally** because the right role depends on which office they belong to,
and that is a one-line answer from Marcus rather than a guess — but the moment it is
known this is a two-minute change.

## CF-13 — 134 of 137 Contacts are unmerged duplicates

**Re-scoped 29/08. The original ticket had the premise wrong and the size wrong.**

> **As written, this ticket said:** *"Contact and Lead still run stock rules only… Ticket
> 2.1 merged Contact duplicates too, so the same argument almost certainly applies and has
> simply never been made."*
>
> **Both halves are false.** `merge-log.md` contains **no occurrence of the word
> "contact"** — Ticket 2.1 never touched the object. The three hits in the 2.1 audit are
> the English word (*"at the next contact with that customer"*). And it is not a rules
> problem: **the stock Contact rule is already active** with Alert + Report.

### What the org actually says

| | |
|---|---|
| Contacts | **137** |
| Distinct emails among them | **40** |
| Contacts sitting in duplicate groups | **134 — about 97%** |
| Duplicate groups | **37**, most of them 4 records |
| Contacts merged by Ticket 2.1 | **0** |
| Duplicate Record Sets in the queue | **0** |

A representative group — identical name, identical email, same parent Account, created
**the same second** by the 17/08 seed load, differing only in phone:

```
Joshua Patel  joshua.patel682@example.com  (02) 4754 1806  Joshua Patel Residence
Joshua Patel  joshua.patel682@example.com  (02) 5914 3046  Joshua Patel Residence
Joshua Patel  joshua.patel682@example.com  (02) 7074 4286  Joshua Patel Residence
Joshua Patel  joshua.patel682@example.com  (02) 8234 5526  Joshua Patel Residence
```

### Why the active rule caught none of them

**Duplicate rules only fire on create and edit. They never scan data that already
exists.** These 134 were bulk-loaded on 17/08 and the rule has had nothing to react to
since. The queue reads 0 and the object looks clean.

**This is the 2024 Account failure exactly**, on an object nobody has opened — except
that in 2024 Salesforce at least *flagged* the duplicates and they went unread. Here
nothing was ever flagged, so there is not even a list to ignore.

### Lead needs nothing — do not build a rule for it

**Zero Lead duplicates on email. Zero on phone.** Across 150 Leads. Building a Lead
duplicate rule would be inventing a rule against no evidence, which is the precise
substitution [ticket-2.1-data-quality-audit.md](ticket-2.1-data-quality-audit.md) §③ and
§④ already record as the mistake. **The original ticket's "the same argument almost
certainly applies" was an assumption, and the data does not support it.**

### Blocked — and this is the first time CF-22 has blocked build work

Merging 134 records needs a survivorship rule: which record survives, and what happens to
the four different phone numbers in each group — the Account merge lost addresses exactly
this way and produced CF-02. Under
[sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) that rule goes to Marcus
**before** anything irreversible happens.

**Marcus has no channel — see CF-22.** Until now that blocked reporting and escalation.
**It now blocks a merge affecting 134 records.**

**Evidence:** [`evidence/week-02/cf-13-contact-duplicates.csv`](../evidence/week-02/cf-13-contact-duplicates.csv)
(all 137, sorted by email so the groups read at a glance) and
[`evidence/week-02/cf-13-leads-no-duplicates.csv`](../evidence/week-02/cf-13-leads-no-duplicates.csv)
(all 150 Leads — kept as the evidence for *not* building a rule, which is the harder
thing to prove later).

**Safe to do meanwhile, no approval needed:** build `CF-13 Contact duplicates by email` —
a Contacts summary report grouped by Email, in SunRise Ops, alongside CF-01's. It reads
40 groups over 137 records. **Surfacing them is not merging them**, and the read-side is
what was missing in 2024.

### Update 29/08 — the rule is written and tested. Nothing merged.

**[cf-13-contact-merge-rule.md](cf-13-contact-merge-rule.md)** — awaiting Marcus.

**The obvious survivorship rule was tested and it failed.** "The record with the most
Cases" gives a **unique winner in 4 groups and ties in 33 of 37.** That is Ticket 2.1's
*"most recent won Opportunity"* failure repeating — **except the test ran before the rule
went to Marcus this time, not after he approved it.** That is the first time
[sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) has done the job it was
written for.

**And it turned out not to matter:** Salesforce reparents child records to the survivor
on merge, so all **140 Cases** follow whichever Contact wins. The Cases were never at
risk. The rule therefore declares the survivor choice **arbitrary** rather than dressing
record age up as evidence — which is the mistake CF-02 records.

**What is at risk is what differs:** **37 of 37 groups differ on phone, 21 of 37 differ
on mailing address.**

| Bucket | Groups | Action |
|---|---|---|
| **A** — phone conflict only | 16 | **Merge.** Discarded phones written to the survivor's Description first |
| **B** — mailing address conflict | **21** | **HOLD.** Same reasoning as CF-20 |

Bucket B is CF-02 before it happens. Six accounts carry an unconfirmed-address flag today
because record age picked an address the org can no longer recover. **Repeating that on
21 groups to finish a merge faster is not a trade worth making** — and it is Marcus's to
refuse, not the admin's to take.

> **A pattern worth naming: three separate holds now wait on customer contact that nobody
> is rostered to make** — CF-02's six addresses, CF-20's ten pairs, and CF-13 Bucket B's
> twenty-one groups. That is one job for one person, currently filed as three tickets
> that each wait quietly.

## CF-14 — Week 1 evidence was never captured

**Closed today, partially.** `evidence/week-01/` contained nothing but `.gitkeep`.

The brief required screenshots taken *before* any change: the licence page at 4/4, the
user list, the permission-set assignment screen. Those moments have passed and cannot
be re-photographed.

**What was recoverable has been captured today as data:**

- `evidence/week-01/licence-position.csv` — still shows **Salesforce 4/4**, Platform 1/6
- `evidence/week-01/user-list.csv` — all 11 users with profile, role, last login,
  Marketing User flag and created date

~~**Stated honestly:** these are today's state, not a pre-change snapshot. They are
evidence of the licence wall being real, which is the claim that mattered — not
evidence of what the org looked like on 19/08.~~

### ⚠️ Reopened and corrected 01/09 — the pre-change evidence exists

**This ticket declared evidence unrecoverable without checking whether it had been
taken.** It had been. **Seven screenshots timestamped 19/08 21:35–21:45** were sitting in
OneDrive the whole time, and are now committed to
`evidence/week-01/screenshots-19-08/`.

**`01-licences-before.png` is precisely the shot the brief asked for**, and it proves
itself pre-change:

| | 19/08 screenshot | Today |
|---|---|---|
| Salesforce | 4 total, **4 used, 0 remaining** | 4 of 4 |
| **Salesforce Platform** | 6 total, **0 used** | **1 used** |
| Primary Contact | **OrgFarm EPIC** | Hemayet |

**Platform at zero used is the proof** — Priya, Alan and Lisa did not exist yet. Also
captured: `02-ben-carter-before.png`, and the four default-owner screens
(`web to lead`, `default lead owner` ×2, `Automated case user`, `default workflow user`)
which are the **before** state for CF-16.

**The finding is not the filing.** It is that *"those moments have passed and cannot be
re-photographed"* was written **without opening the folder**. That is the pattern this
register documents on every other page — CF-02, CF-07, CF-20, CF-22 are all *a thing
exists and nobody reads it*. **Here the thing that went unread was the evidence that a
ticket was about to declare lost.**

> **And one detail nobody noticed for thirteen days:** the same screenshot shows
> **Chatter Free — 5,000 total, 1 used, 4,999 remaining.** It was on screen on 19/08, in
> the very image taken to document the licence wall. **CF-22's channel was free and
> visible from the first day**, while the escalation route was treated as blocked on a
> licence decision for four weeks.

## CF-15 — The role hierarchy is Salesforce's US sample

**Updated 18/09/2026: Requirements needed; decision request drafted, not sent.**

Read-only verification returned 20 roles: 18 existing sample roles
plus Sydney Sales Team and Newcastle Sales Team. Both local sales
roles sit under Director, Direct Sales.

CF-12's assignments are complete: Jack is in Sydney; Mia and Ben
are in Newcastle. The broader hierarchy redesign remains open.
Record visibility and forecasting behaviour have not been verified.

The reviewed sources do not establish the intended management
structure or access requirements. A draft asks Marcus to confirm
team oversight, record visibility and edit access, forecasting
oversight, and Manager-field assignments for approval routing.

See [CF-15 hierarchy review](cf-15-hierarchy-review.md).
The request has not been sent. No Salesforce configuration,
user assignments or records changed during this review.


## CF-16 — Default owner fields all point at the admin

**Updated 18/09/2026: Ownership decisions needed; request drafted, not sent.**

Default Lead Owner, Default Case Owner, Automated Case User and
Default Workflow User remain Hemayet Hossain. Both default-owner
notification checkboxes are unchecked. Read-only queries returned
no queues or queue-object associations.

All 150 unconverted Leads are owned by Hemayet Hossain and have
status Open - Not Contacted. Their current ownership does not
establish how they were originally assigned.

The two admin-assigned entries described previously belong to the
inactive Standard lead assignment rule. The active NSW Territory
Routing rule has three entries assigned to Jack, Mia and Ben.
Its criteria and order were inspected, not changed or tested.

Decisions are needed on inbound Lead ownership, response time and
backup coverage, default Case ownership, the existing Lead backlog,
and accountability for automation-user settings.

See [CF-16 ownership review](cf-16-default-ownership-review.md).
CF-16 remains open. The request has not been sent, and this review
changed no Salesforce settings, assignment rules or records.

---

# 🔵 Deferred — with reasons

## CF-17 — Placeholder Manager assignments for four users

**Verified 18/09/2026: Deferred pending confirmed Manager assignments.**

A read-only User query against `sunrise` returned:

| User | Active | Current Manager | Current role |
|---|---|---|---|
| Ben Carter | Yes | Hemayet Hossain | Newcastle Sales Team |
| Jack Nguyen | Yes | Hemayet Hossain | Sydney Sales Team |
| Mia Kelly | Yes | Hemayet Hossain | Newcastle Sales Team |
| Priya Sharma | Yes | Hemayet Hossain | None |

The earlier register identified these Manager assignments as
placeholders. The current query confirms the stored assignments,
not the intended reporting lines.

The searched decision log returned no matching Manager decision.
The [CF-15 review](cf-15-hierarchy-review.md) includes an unsent
request to confirm Manager-field assignments for approval routing.
That decision should explicitly cover all four users listed here.

Once assignments are confirmed, verify the intended manager users
and review any approval-routing dependencies before making changes.
Approval behaviour was not tested during this review.

CF-17 remains open and deferred. No User records were changed,
and no message was sent.


## CF-18 — `Marketing Campaign Access` permission set

**Deliberately not built.** Permission sets are constrained by licence type, so it
would grant Priya nothing while she is on a Platform licence. Building it now would
look like progress and deliver none. **Blocked on CF-03.**

## CF-19 — 47 accounts still violate the naming standard

Still named `… Residence`, grandfathered by the `ISNEW() || ISCHANGED(Name)` guard on
the validation rule so they remain editable.

**Deliberately not renamed yet:** renaming before the merge tail is finished makes the
remaining duplicates *harder* to spot, not easier. Sequence after CF-20.

## CF-20 — Ten middle-initial pairs, held for confirmation

**Due 08/09/2026 · 20 Tasks in the org, all Not Started**

`X` and `X J.` as separate accounts — William Kowalski, Liam Bennett, Lucas Tran,
Michael Young, Ryan Singh, Samuel Fitzgerald, Oliver Murphy, Andrew Anderson, Daniel
Clark, Joshua Patel.

**Held on purpose.** Evidence is strong but circumstantial: 9 of 10 share a suburb,
10 of 10 split landline vs mobile. That is enough to state as the expected answer, not
enough to merge on. Merging them on name similarity plus record age would repeat the
mistake Ticket 2.1 §③/§④ already records.

This is what keeps the customer count a **41–51 range**, and it is the mechanism CF-01's
freeze point depends on.

---

# ✅ Done

## CF-21 — Open-task visibility

**Raised and closed 27/08 · Report `00OgK00000DlqOfUAJ`, folder SunRise Ops**

CF-02, CF-07 and CF-20 all failed the same way: a control existed and nobody opened it.
**Open Tasks had no report at all**, so twenty-six pieces of dated work sat in the org
visible only to whoever thought to look at a stock list view.

**Built:** *CF-01 Open tasks by due date* — Activity report, summary format, grouped by
due date, filtered to `Status ≠ Completed AND Task = True`. Columns: Subject, Assigned,
Related To, Status, Priority. Reads **6 due 27/08, 20 due 08/09**.

Two corrections made to the version built in the UI:

1. **Scope was `user`, now `organization`.** As built it showed only the running user's
   own Tasks. It *looked* correct because Hemayet is assigned all 26 — the same way
   Ticket 2.3's "ask the owner" looked workable until anyone checked who the owners
   were. The moment a Task is assigned to a rep, a user-scoped report stops showing it
   to the person meant to be supervising.
2. **Moved from Public Reports to SunRise Ops**, and committed to
   `force-app/main/default/reports/`. Yesterday four near-identical Pipeline Hygiene
   reports had to be deleted because parallel UI and metadata builds scattered them
   across three folders. One canonical copy, in version control, from the start.

---

## What Week 3 should not inherit quietly

Three of these have a pattern in common — **CF-02, CF-07 and CF-20 are all controls that
exist and are not being read.** Six overdue Tasks, an empty queue with no reader, twenty
Tasks dated for a fortnight away *(written 27/08 — **as at 01/09 that is seven days**)*.

That is precisely the failure Ticket 2.2 diagnosed: *Salesforce flagged the duplicates
in 2024, allowed them, and nobody opened the list.* The tooling built in Week 2 is
better than what existed. **It fails the same way if nobody is rostered to look at it**,
and right now nobody is.

### And a fourth failure mode, added 29/08

CF-02 found the one that is worse than an unread control: **a control that is read, and
is answered by clearing it.**

Six overdue high-priority flags were marked Completed with no call made, no address
changed and no confirmation written down — and the CF-01 report, built two days earlier
for the sole purpose of surfacing that work, agreed the problem was gone.

**An unread control leaves the risk visible to anyone who eventually looks. A cleared
one leaves the risk invisible and produces a record saying it was handled.** The second
is harder to find and reads as evidence of good practice.

The countermeasure is not more discipline, because the pressure that produced it — an
overdue flag on an obligation that never had a real date — was manufactured by the
control's own design. It is that **the object that gets cleared and the object that
records the work should not be the same one.** Hence, for CF-02: the task is now undated
and keeps the history, and the flag that carries the control sits on the Account.

**CF-20's twenty Tasks dated 08/09 are the same shape and have not been rethought.**
They are undated obligations wearing a date, on a register that now knows what that
produces.
