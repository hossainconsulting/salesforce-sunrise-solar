# Status note — the customer count is 48, and Sarah has 41–51

**SunRise Solar · 05/09/2026 · CF-01 / CF-02 / CF-20**
*Rewritten 05/09 against the finished result. An earlier draft said 47–51 with six pairs
answered; all ten are now answered and the number is single.*

**Review 21/09/2026 — historical note; posting verified.**

The group revision was posted on 05/09/2026 at 10:23:59 UTC:
`FeedItem 0D5gK00000VRUD3SAP`. Unlike the proposed wording below,
the actual post directly addresses Sarah with the 48-household revision.
Its audit copy is `0D5gK00000VRUD4SAP`.

No comments were returned on either post in this review. Notification,
reading and acknowledgement remain unverified; other channels were
not checked.

The 48-household figure follows from the completed confirmations;
merging the three duplicate pairs changes the Account record count,
not the household count. The original wording below saying "once the
merges run" conflates those two measures.

The original note remains dated 05/09. Its proposed asks and licence
statements are historical, not a current status report.
This review changed no Salesforce records and sent no message.



| | |
|---|---|
| **To** | Marcus |
| **Channel** | `SunRise Ops — Escalations` — @mention **Marcus Neil** (`005gK00007HBpc5QAD`). **Not Marcus Head or Marcus Lee, both deactivated.** |
| **Audit copy** | Chatter on `William J. Kowalski Residence` (`001gK00001Luv6TQAR`) |

Per [sop-escalating-rule-changes.md](sop-escalating-rule-changes.md) v1.1: what changed,
why, what replaced it, and the ask.

---

## The short version — this is what goes in the group

> **@Marcus Neil — the customer count is 48. Sarah has 41–51 from Tuesday.**
>
> **CF-20 is done, all ten pairs, three days early.** Seven are separate households and
> three are the same customer twice — Kowalski, Bennett and Young. So 51 accounts less
> three merges is **48 households**. That's a single number, which is what you asked for on
> the 25th and haven't had since.
>
> **The six address confirmations are done too. All six were already right, nothing moved.**
>
> **Three things I need from you, and one I got wrong.** The three merges need your
> survivorship call before I touch anything — each one throws away a real phone number and
> I'm not doing that on my own judgement after CF-02. Sarah needs the number. And the
> licence purchase hasn't landed, so Jake still can't log in.
>
> **What I got wrong: I ran a day past the date you set on the six calls, and none of those
> six customers named their own suburb — I read them the options and they picked. I've
> written that into each record as prompted rather than confirmed, because it's weaker than
> it sounds.**

---

## The number

**48 households.**

| | |
|---|---|
| Accounts today | **51** |
| Pairs confirmed **one household** — Kowalski, Bennett, Young | **3** |
| Pairs confirmed **two households** | **7** |
| **Customer count once the three merges run** | **48** |

**41 is not reachable and never was.** It required all ten pairs to be duplicates. Seven
are not.

CF-01's freeze point slipped twice against 08/09 — first when the commitment and the Tasks
were set on the same day pointing at different dates, then again last week. **It has now
resolved three days before it was due.**

---

## What the hold was worth, and what it wasn't

Every one of the twenty CF-20 tasks carried the same justification:

> *"EVIDENCE they are one household: matching suburb, and complementary phone formats —
> landline on one record, mobile on the other — consistent with two import sources for the
> same customer. That pattern holds on all 10 pairs."*

**It finished 3 for 10.** Every pair carried that pattern and seven of them were two
different customers.

**Both halves of that matter, and the second one is the uncomfortable half.**

**Holding them was right.** Merging on that evidence in August would have collapsed seven
real customers into three and nothing in the org would have shown it afterwards — the same
irreversible loss as CF-02's addresses, at seven times the scale.

**But the stated reason for holding them was wrong.** The hold was correct because the rule
was *don't merge on circumstantial evidence*, not because that particular evidence pointed
anywhere. If the pattern had been treated as strong enough to act on — which is how it
reads in the task text — the damage would have been done under a written justification.

**The same test caught one more thing.** On Murphy, the org's own evidence said Chatswood —
two of his four merged records and his pair record both said so — and the customer said
Campbelltown, which the account already held. **The circumstantial evidence was wrong and
the record was right.**

---

## Two things I got wrong

**1. I ran past the date.** You said "this week" on Tuesday 01/09. Murphy and Fitzgerald
were done Thursday 03/09; the other four on Saturday 05/09 — one day past COB Friday. Not a
large slip, but you set a date and you should hear about a miss from me.

**2. All six address calls were prompted, and that matters.** None of the six named their
suburb unaided. Each hesitated, I read out the three candidates, and they chose. **A
prompted confirmation of the value already on the record is the weakest form this evidence
takes** — it invites agreement. All six confirmed what was already there and no address
changed.

It is written into each task as *prompted, not open*, in those words, so nobody later reads
it as something stronger. **If you want any of the six re-done with an open question, say
which.**

---

## The asks

### 1. The three merges need your survivorship call

**Nothing has been merged.** All three are recorded as MERGE CANDIDATES and stop there,
same as the CF-13 Contact rule.

| Pair | Customer's preferred number | Survivor on that basis | Number that gets discarded |
|---|---|---|---|
| **Kowalski** | 0410 110 866 — **mobile** | `William J. Kowalski Residence` | (02) 4406 1434 |
| **Bennett** | (02) 4522 1558 — **landline** | `Liam Bennett Residence` | 0410 142 542 |
| **Young** | (02) 7306 4534 — **landline** | `Michael Young Residence` | 0410 269 246 |

**These do not point the same way, so there is no blanket rule to approve.** Kowalski wants
the mobile, the other two want the landline. Two out of three is a tally, not a rule.

**What I recommend:** survivor = the record holding the number the customer said reaches
them, and **the discarded number written into the survivor's Description before the merge
runs.** Salesforce does not keep it. A lost phone number here is the same failure as the
six addresses CF-02 spent three weeks unwinding, and this time we know in advance.

**Worth noting what this basis is.** Every survivorship decision in this org before this
week rested on record age — which is what produced CF-02, and what the CF-13 rule had to
give up on and declare arbitrary rather than dress up. **These three rest on the customer
saying which number reaches them. It is the first time a merge here has had an actual
reason behind the choice.**

### 2. Does Sarah get 48 now, or at the board pack?

**My recommendation: now, and from you.** She was told 41–51 on Tuesday on your own
principle of telling her before she asks. The same principle applies to the correction, and
this is better news — a single defensible number rather than a ten-wide range.

**Note the number is 48 once the merges run.** Until you approve them the org still holds
51 accounts, and a report Sarah runs herself will say 51. Either approve the merges first
or tell her both figures and why they differ.

### 3. The licence purchase has not landed

You chose **buy three** on 01/09. Nothing has arrived, so **Jake still cannot log in.**

That currently blocks the duplicate-queue owner you rostered him for (CF-07), his own
pipeline report (2.3), and the standing job you described — *"once Jake's in, it's his
standing job"*. The register recorded this pattern in August as **every open control in
this org points at a man who cannot log in**, and that is still true five days after the
decision was made.

**This is not a new decision — it is the one you already made, not yet executed.** If it is
stuck on procurement rather than on you, say so and I will stop treating it as pending.
