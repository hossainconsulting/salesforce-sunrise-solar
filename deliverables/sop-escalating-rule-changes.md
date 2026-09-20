# SOP — When an approved rule breaks

**SunRise Solar · Owner: Hemayet Hossain · v1.2 — 21/09/2026**
*(v1.0 25/08/2026 · v1.1 29/08 — delivery failure identified ·
v1.2 21/09 — current recipient, channel access and response evidence clarified)*

**Scope:** one page. What to do the moment a rule someone signed off stops working
against real data.

---

## The rule

> **When an approved rule fails on contact with the data, that is a message to the
> approver — before you proceed, not in the write-up afterwards.**

One line. Sent at the moment of discovery. Then carry on.

---

## Why this exists

On 25/08/2026, Marcus approved this merge rule:

> "Two Accounts are the same customer when their phone numbers match; the surviving
> record is the one with the most recent won Opportunity, and any group without a
> clear winner is held for review rather than merged."

Both halves failed within the hour. Phone matching missed 127 duplicates because
many records have no phone. "Most recent won Opportunity" selected no unique
survivor in most groups, because either several records had won Opportunities or
none did.

Adapting was correct — name-matching with a record-age fallback was a reasonable
substitute, and the work could not proceed otherwise.

**Not telling him was the mistake.** He learned that the methodology had changed by
reading the audit. His words: *"I approved a rule, something else happened, and I'm
reading about it afterwards. If Sarah asks me what methodology we used, I'd have
said the wrong thing this morning."*

**The cost was asymmetric.** One Chatter line on the 25th —

> *"Phone matching is missing 127 dupes because a lot of records have no phone.
> Proposing name + record age for the groups I've cross-checked. OK?"*

— would have removed half of Marcus's Monday list. Thirty seconds against a
credibility problem that took a full audit section to repair.

## When it applies

Send the message when any of these is true:

- The **matching or selection criterion** you were given doesn't discriminate
- You are substituting a **different field, key, or fallback** than the one approved
- The **scope** turns out to be larger, smaller, or a different shape than agreed
- You are about to do something **irreversible** under a rule that has already bent

## What the message contains

Four things, in one or two sentences. No document, no meeting.

1. **What broke** — the specific failure, with a number if you have one
2. **Why** — the data reason, not an apology
3. **What you propose instead** — a concrete substitute, not a question in the air
4. **Ask** — "OK?"

Then keep working; you are informing, not requesting permission to breathe. If the
change is irreversible, wait for the reply.

## Where to send it

The 29/08 review found that the original instruction to post on a record
or ticket did not provide a working route to the intended approver.
CF-22 retains that historical evidence and the subsequent channel repair.

**Route reviewed 21/09/2026:** Marcus Neil (`005gK00007HBpc5QAD`)
is active and belongs to SunRise Ops — Escalations
(`0F9gK000000YDsTSAW`). Marcus Head is inactive.
Use Marcus Neil's current account when selecting the mention.

Marcus Neil's 01/09 reply to the consolidated decision list is recorded in
[Decisions received](decisions-received-marcus.md). It establishes a
response to that list, not receipt of every earlier or future message.

### Check the route before sending

1. Confirm the intended recipient's current account and active status.
2. Check access to the actual destination, including licence limitations
   and private-group membership. An active account alone is insufficient.
3. For Marcus, use the escalation group with a live mention of Marcus Neil.
   Include the facts and decision request in the post itself; do not rely
   on a business-record link as the only explanation.
4. If that route is unavailable, confirm an alternative the recipient
   actually uses. Record the chosen route and retain an audit copy in an
   appropriate location with suitable access.
5. Record posting separately from acknowledgement and approval.
   A saved draft, group membership or successful post does not prove receipt.
   For an irreversible change, wait for an explicit decision covering the
   proposed action.

Recheck the route when sending, especially after account, licence or
membership changes. The 01/09 repair shows why a one-time check is insufficient.

### What every status note must carry

Example for a new, unsent escalation:

> **To:** Marcus Neil
>
> **Channel:** SunRise Ops — Escalations; live mention of Marcus Neil
>
> **Delivery:** Draft — not sent
>
> **Response/decision:** Awaiting reply
>
> **Audit reference:** Add the post link and any decision reference after sending.

Update the delivery status only after sending. Record the actual response
and its scope separately; acknowledgement is not approval of a substitute rule.

This SOP review made no Salesforce changes and sent no message.

## The second test

> **Can the person I am writing to actually receive this, today, by the route I have
> written at the top of it?**

If no, the note is a diary entry. Change the route before you send it.

## What it is not

- **Not a status update.** Only send it when a rule *changed*.
- **Not an apology.** A rule that breaks on real data is normal.
- **Not a substitute for the build log.** The log records what happened; this
  message makes sure nobody learns it from the log.

## The test

> Could the approver be asked, tomorrow, what method was used — and give the right
> answer without reading anything I wrote?

If no, send the message.
