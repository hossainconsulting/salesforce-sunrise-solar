# CF-13 — Contact merge: the survivorship rule, for approval

**SunRise Solar · Org `sunrise` · 29/08/2026 · Owner: Hemayet Hossain**
**Status update — documentation reviewed 21/09/2026:** Marcus approved
merging Bucket A and holding Bucket B. The build log records execution
on 01/09: 16 groups merged, Contacts 137 → 98, and 21 address-conflict
groups held. The 05/09 handover counted 79 Contacts in those held groups;
the 07/09 session still listed their disposition as awaiting Marcus.

See [CF-13's reconciled status](carry-forward-tickets.md#cf-13--contact-merges-completed-address-conflict-groups-held)
for execution evidence and remaining work. No live checks or further
merges were performed for this documentation review.

**Historical proposal — 29/08/2026:** The approval request below is
preserved as written. Its pending-approval language, estimates and
“nothing merged” statements describe the position before 01/09.

---

## Delivery

| | |
|---|---|
| **To** | Marcus |
| **Channel** | ✅ **`SunRise Ops — Escalations`** Chatter group (`0F9gK000000YDsTSAW`) — @mention **Marcus Head**, `marcus.head@sunrise.hossain.dev`, Chatter Free, created 29/08. **This is the first approval request in the project with a working channel.** **⚠️ Superseded 01/09: Marcus Head is deactivated.** Live recipient is **Marcus Neil** (`005gK00007HBpc5QAD`, `hossainconsulting+marcus@gmail.com`), in the same group. Posts from 29/08 still @mention the dead account — see CF-22. |
| **Audit copy** | This document, committed |

Per [sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) v1.1. **This is an
approval request, not a notification.** 134 records and 140 Cases are affected and the
merge is irreversible, so the SOP says wait for the reply.

---

## The rule, in one paragraph

> **Two Contacts are the same person when their email addresses match exactly.** Where a
> group's records differ **only by phone number**, merge them: the survivor is the oldest
> record by `CreatedDate`, **chosen arbitrarily and declared as arbitrary**, and every
> discarded phone number is written to evidence before the merge runs. Where a group's
> records **also differ by mailing address**, do not merge — hold it, exactly as the ten
> middle-initial pairs are held under CF-20.

---

## What I tested before proposing it

**This is the step that was skipped on 25/08.** That day a rule was approved and both
halves of it failed within the hour, which is why
[sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) exists. The tests below
were run first this time.

### ① Does the match key discriminate? — **Yes**

| | |
|---|---|
| Contacts | 137 |
| Distinct emails | 40 |
| Groups of 2+ | **37** |
| Groups matching on **exact** email | **37 of 37** |

**No fuzzy matching is needed and none should be used.** Ticket 2.1's phone key failed
because `(02) 4232 1248` and `0242321248` are the same number stored two ways. Email here
has no equivalent problem — the 37 groups are byte-identical on the field.

### ② Does "most Cases" pick a survivor? — **No. It fails in 33 of 37 groups**

This was the obvious rule, and it is the one I would have proposed without testing:

| Outcome | Groups |
|---|---|
| Unique winner on case count | **4** |
| **Tied** | **33** |
| Nobody in the group holds a Case | 0 |

**124 of 137 Contacts hold at least one Case**, spread evenly across each group. This is
the identical failure to *"the surviving record is the one with the most recent won
Opportunity"* — a criterion that reads as evidence-based and selects nothing.

**And it turns out not to matter, which is the more useful finding.** Salesforce
**reparents all child records to the survivor automatically** on merge. All 140 Cases
follow whichever Contact survives. **The Cases were never at risk, so no survivorship
criterion needs to protect them** — which is why the rule above does not pretend to have
one.

### ③ What is actually at risk? — **The fields that differ**

| | Groups |
|---|---|
| Differ on **phone** | **37 of 37** |
| Differ on **mailing address** | **21 of 37** |

**This is CF-02 again, before it happens.** Six accounts currently carry a
`Service_Address_Unconfirmed__c` flag because an address was picked by record age during
the Account merge and the alternatives are unrecoverable. **21 Contact groups are
positioned to repeat that exactly.**

---

## The two buckets

### Bucket A — 16 groups · phone conflict only · **merge**

Records are identical but for the phone number. Nothing is lost that cannot be written
down first.

1. Export all four records per group to `evidence/week-02/cf-13-pre-merge.csv`.
2. Survivor: **oldest `CreatedDate`**. Arbitrary, and recorded as arbitrary — the records
   were created in the same second by the seed load, so record age carries no meaning
   here. It is a tiebreak, not evidence.
3. **Write the discarded phone numbers into the survivor's Description** before merging,
   so they survive on the record and not only in a CSV.
4. Merge. Cases reparent automatically.

### Bucket B — 21 groups · address conflict · **hold**

**Do not merge these.** Two different mailing addresses for one email is either a moved
customer or two people sharing an address, and nothing in the org distinguishes them.

Choosing on record age is precisely the substitution that produced CF-02's six
unconfirmed addresses — and those six cost a rebuilt control, a new field, a page layout
change and a still-open commitment to ring six customers. **Repeating it on 21 groups to
finish a merge faster is not a trade worth making.**

Held pending the same treatment as CF-20: confirm at next customer contact.

---

## What this does not fix

**134 duplicate Contacts exist because Ticket 2.1 never touched the object** — the
register said it had, and it had not. Merging Bucket A takes roughly 48 records out.
**Bucket B's 21 groups stay duplicated until somebody rings someone**, and that is the
same unresourced dependency as CF-02's six calls and CF-20's ten pairs.

That is now **three separate holds waiting on customer contact that nobody is rostered
to make.** It is worth deciding whether that is one job for one person rather than three
tickets that each quietly wait.

---

## The ask

1. **Approve the match key** — exact email. Low risk; it is the strongest key in the org.
2. **Approve the arbitrary survivor for Bucket A**, given Cases reparent regardless and
   the records are otherwise identical. I want this said out loud rather than assumed,
   because "oldest record wins" is what went wrong last time and I am proposing it again
   here for a different and stated reason.
3. **Approve holding Bucket B** — or tell me to merge it and accept losing 21 addresses,
   which I would rather you decided than inherited.

— Hemayet
