# Reply to Zara — Campaign access for Priya Sharma

 **Originally drafted:** 21/08/2026 · **Updated:** 18/09/2026
**Status:** Three-sentence draft ready; not sent.

---

## Delivery

|                |                                                                                                                                                                                                                                                   |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **To**         | Zara                                                                                                                                                                                                                                              |
| **Channel**    | **Email — and it always was.** Zara emailed in (_"Zara, email, Wednesday · Subject: Campaign access"_) and the brief asks for _"a three-sentence email reply"_. Recipient: `hossainconsulting+zara@gmail.com`; delivery verified 02/09/2026 as recorded below.|
| **Audit copy** | This document, committed                                                                                                                                                                                                                          |

> **Zara does not need a Chatter account.** She was briefly listed in CF-22 as a sixth
> document routed to Chatter, on a grep hit for the word in _"Can: … use Chatter"_ — which
> describes **Priya's** Platform-licence access, not a delivery route. **Corrected.** Her
> channel was never broken; giving her a Chatter Free user would be building something she
> never asked for and does not use.

### Correction 29/08 — one sentence below was not true when it was written

The draft says **"I've asked Marcus to decide between buying a licence or freeing one
up."** Written 21/08. **Marcus was never asked** — he had no user account and every note
addressed to him went to a Chatter feed he could not receive (CF-22).

**That sentence became true today, 29/08**, when the licence decision reached him as
[status-note-marcus-cf-03-licence-decision.md](status-note-marcus-cf-03-licence-decision.md).
It had been sitting in a draft reply to a manager, as a statement of fact, for eight days.

**This changes what is blocking the reply.** It was recorded as blocked on CF-03 — wrongly:
the draft is written _for_ the unresolved state and says so plainly. **What actually
blocked it was that it contained a claim that was not yet true.** The only thing left is
CF-11, the three-sentence version, which is Hemayet's to write.

---

**Subject:** Re: Campaign access
**To:** **Zara Lee — `hossainconsulting+zara@gmail.com`**
**Status: Draft ready; not sent.**
The recipient address was verified by delivery on 02/09/2026,
as recorded below. Send from Hemayet's mail client.

**Checked 18/09/2026:** Priya is active with the Standard Platform
User profile and Salesforce Platform licence. Marketing User is
false and LastLoginDate is blank; successful login was not verified.
Salesforce licence usage is 4 of 4. Marcus's recorded decision
places Priya's additional licence in the October 2026 budget.

Hi Zara — Priya's account has been created, but her Campaign access is not yet enabled.
Marcus has confirmed October 2026 as the budget timing for the additional licence she needs.
Once the licence is available, I'll configure and test her Campaign access and confirm when it is ready to use.

— Hemayet

### Why this replaces the 21/08 draft

The original said Campaign access would arrive *"the same day"* the licence decision
resolved. **Marcus rejected that phrasing outright** on 01/09:

> *"Tell Zara it's October, not 'when the licence is resolved' — she's had a vague answer
> once already."*

A date she can plan around, not a dependency she has to chase. The 21/08 draft also
claimed *"I've asked Marcus"* before he had any way of being asked — see the correction
above.

### The address — resolved 02/09, and proven

**`hossainconsulting+zara@gmail.com`**, and it is proven the only way that counts: **a
real email arrived there and someone opened it.** That is stronger evidence than a field
in a user record, which is what `marcus.head` and `ben.carter` had before nothing ever
reached them.

The first address offered was `hossainconsulting+zarra@sunrise.hossain.dev` — the working
plus-alias pattern bolted onto the **fictional domain**, which accepts no mail.

**Username is not Email.** A Salesforce username only has to be unique and email-shaped;
it never receives anything. The **Email** field is the deliverable one. That distinction
produced three of the dud accounts in this org.

**No Salesforce account is needed to send this reply.** It goes from Hemayet's mail client
to the address above. The org record was never the channel — treating it as one is what
made this ticket look blocked for two days.

**Her org accounts, for the record.** Three were created: `zara.chan@sunrise.hossain.dev`
(29/08, never used), `hossainconsulting+zara@sunrise.hossain.dev` (02/09, the hybrid
address, abandoned), and **`hossainconsulting+zara@gmail.com` (02/09, active, logged in
11:52)**. The first two are deactivated. **The ownership gate was run on all three before
deactivating: 0 Accounts, 0 Opportunities, 0 Cases, 0 Tasks** — nothing stranded, per
[sop-user-deactivation.md](sop-user-deactivation.md) v1.2.

---

## What Priya can and can't do right now

**Can:** log in, see Accounts and Contacts, run and build reports and dashboards,
use Chatter.

**Cannot:** see or touch Campaigns at all — not create, not edit, not view.

## Why — the bit that isn't in Zara's email

Two separate walls, and the second one only appears once you've climbed the first.

**1. The Marketing User checkbox.** Campaign create, edit and delete are gated by
a checkbox on the _user record_, not by the profile. Object permissions can say
yes and the save still fails. This is what produced the Phase 0 error:

```
DML operation Delete not allowed on Campaign
```

It's off by default, including for System Administrators.

**2. The licence type — this is the real blocker.** Attempting to set Marketing
User on Priya's Platform-licence account returns:

```
FIELD_INTEGRITY_EXCEPTION :: Marketing User is not allowed for this License Type
```

Salesforce Platform licences do not include Campaigns **at all**. Verified against
the org: `Campaign` has no object-permission row for the `Standard Platform User`
profile, only for `Standard User`. So there is nothing to grant — no profile
change, no permission set, no checkbox will produce Campaign access on a Platform
licence, because the object isn't in the licence.

A permission set named `Marketing Campaign Access` was planned for this ticket and
has **not** been built. Permission sets are constrained by licence type too, so it
would grant nothing until Priya is moved to a Salesforce licence. Building it now
would look like progress and deliver none.

## The trap I avoided, and the better one underneath it

The obvious wrong answer is granting **System Administrator** "because it works."
It wouldn't have — the Marketing User checkbox would still be off, and Zara
wouldn't have noticed while I handed a marketing coordinator full org access.

But the less obvious wrong answer is following the ticket literally: _"create Priya
on a Platform licence and tick Marketing User."_ That instruction cannot be
carried out. Discovering that early is the whole value of checking licence type
before building — the same lesson as Ticket 1.1, arriving from a different
direction.

## Current state

|                                            |                                                                                                                    |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| Priya Sharma                               | Created, active, `Standard Platform User`, Title _Marketing Coordinator_, Manager set, `Australia/Sydney`, `en_AU` |
| Password email                             | Suppressed — she starts Monday                                                                                     |
| Marketing User                             | **Not set** — not permitted on this licence type                                                                   |
| Campaign access                            | **None** — object not available on Platform                                                                        |
| `Marketing Campaign Access` permission set | **Not built** — deferred until the licence is resolved                                                             |

## To finish this ticket once a licence is available

1. Move Priya to a **Salesforce** licence (profile → `Standard User`).
2. Tick **Marketing User** on her user record.
3. Build the `Marketing Campaign Access` permission set — Campaign Read, Create,
   Edit — and assign it. Additive, auditable, removable without touching anyone
   else's profile.
4. Verify with **Login As**: she can create and edit a Campaign, and cannot see
   Finance data.
5. Reply to Zara confirming it's live.
