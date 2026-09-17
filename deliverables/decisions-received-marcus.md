# Decisions received from Marcus — all eight

**01/09/2026 · Org `sunrise`**

---

## Provenance

| | |
|---|---|
| **Author** | **Marcus Neil** (`005gK00007HBpc5QAD`), Chatter Free |
| **Record** | `FeedComment` **`0D7gK000000CH3VSAW`** |
| **Posted** | **01/09/2026 04:16:27 UTC** |
| **On** | The `DECISION LIST` post in `SunRise Ops — Escalations` (`0F9gK000000YDsTSAW`) |

**This is a genuine record in the org, written by Marcus's own account** — not a
reconstruction, not a summary of a verbal answer, not the admin recording what he thinks
was agreed. It can be read back by anyone with access, and it is quoted verbatim below.

> **The distinction matters here more than usual.** CF-22 exists because four weeks of
> escalations *read as delivered* without ever reaching anyone. A decision written into a
> build log by the person who wanted the decision has the same defect. **This one does
> not.**

---

## The reply, verbatim

> **1. Range.** 41–51 with the arithmetic behind it. I'd rather give Sarah a number I can
> defend than one I can't. Tell her before she asks — don't let her find out from the pack.
>
> **2. You make the six calls this week.** I know that's not your job. It's six calls and
> there's nobody else with a login. Once Jake's in, it's his standing job.
>
> **3. Buying three, not four.** The two hires and Jake. Jake's been running a team blind
> for a month and I hadn't clocked that until your post — that's the one that annoys me.
> **Priya waits for next quarter's budget**, and that's my call, not a maybe. Tell Zara
> it's October, not "when the licence is resolved" — she's had a vague answer once already.
>
> **4. Jake inherits all 666**, the moment his licence lands. They're his team's deals;
> they should never have been anywhere else. Until then hold them under your name **as
> declared custodian, written down** — I don't want to discover in November that the admin
> quietly owns the pipeline.
>
> **5. Thirty days.** One number. Kill the fourteen.
>
> **6. Keep it blocking.** My team can wear a save failing. They can't wear another 2024.
> If reps start complaining I'll tell you and we'll revisit — don't pre-emptively soften it.
>
> **7. Jake, Mondays, ten minutes.** Rostered. I'll tell him it's not optional.
>
> **8. Approved as proposed.** Merge the 16, hold the 21. Do not merge the 21 to tidy the
> number up.

---

## What each answer changes

| # | Ticket | Decision | State |
|---|---|---|---|
| 1 | CF-01 | Publish the range 41–51 | **Answered.** Sarah still to be told |
| 2 | CF-02 | **Hemayet makes the six calls this week** | **Answered.** 0 of 6 done |
| 3 | CF-03 | **Buy three** — two hires + Jake. Priya waits until October | **Answered.** Licences not yet purchased |
| 4 | CF-04 | **Jake inherits all 666** on licence. Interim: declared custodian | **Answered.** Custodianship to be recorded |
| 5 | CF-05 | **30 days.** Kill the 14 | **Done in the org** — see below |
| 6 | CF-06 | **Keep Block-on-create** | **Done** — no change needed, sign-off recorded |
| 7 | CF-07 | **Jake, Mondays, ten minutes** — rostered by Marcus | **Answered.** Depends on 3 |
| 8 | CF-13 | **Approved.** Merge 16, hold 21 | **Answered.** Nothing merged yet |

### Three things he decided that were not asked

1. **Priya gets a date, not a dependency.** *"Tell Zara it's October, not 'when the licence
   is resolved' — she's had a vague answer once already."* **This changes CF-11.** The
   drafted reply says Campaign access arrives "the same day that's resolved", which is the
   vague answer he is explicitly rejecting. **The reply needs rewriting before it is sent.**
2. **The custodianship must be written down.** *"I don't want to discover in November that
   the admin quietly owns the pipeline."* That is CF-16's finding — default owner fields all
   pointing at the admin — arriving from the manager's side.
3. **Do not pre-emptively soften the block.** He wants to hear from reps first rather than
   have the admin trade it away on their behalf.

---

## CF-05 — executed 01/09

**`Pipeline Hygiene - Stale Open Opps`** filter changed from
`Close Date less than TODAY` to **`Close Date less than N_DAYS_AGO:30`**.

| | Before | After |
|---|---|---|
| Rows | 61 | **32** |
| Value | $765,952 | **$403,200** |

Retrieved and committed to `force-app/main/default/reports/SunRise_Ops/`.

> **The figure moved again while this was being done.** It was 31 / $387,456 an hour
> earlier and 26 / $323,840 in the 26/08 ticket. **Three readings, three numbers, one
> unchanged threshold** — which is the argument for the standing rule rather than a
> hand-triaged list, and the reason the number must always be quoted with its date.

**Documentation aligned 18/09/2026:** Ticket 2.3 now uses the approved
30-day threshold in its triage summary and all 56 detailed rows.
Verified against the 26/08/2026 snapshot: ASK OWNER 26 ($323,840),
RE-DATE 30 ($378,496), CLOSE 0 ($0). The report-filter description
was updated and historical totals explicitly dated.

**And the Monday subscription still points at Jack and Mia**, neither of whom has ever
logged in. Not fixable until decision 3 lands Jake a licence.
