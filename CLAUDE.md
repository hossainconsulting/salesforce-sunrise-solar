# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this project.

## What this is

Engagement workspace for the **SunRise Solar Solutions internship** — twelve weeks
as the incoming admin at a fictional 47-person NSW solar installer whose org has
been unmaintained for six months. Certification track: **Administrator**.

Scope: user management, data quality, executive reporting, attribution, automation,
custom objects, Service Cloud, security audit, handover.

This is the most advanced repository in the program. Weeks 1 and 2 are worked, 22
carry-forward tickets are open, and the documentation conventions below are load
bearing — they are the reason the record is worth anything.

## The org

Target org alias **`sunrise`**, org ID `00DgK00000WyBZGUA3`.

```bash
sf org display --target-org sunrise
sf data query --target-org sunrise --query "SELECT COUNT() FROM Contact"
```

The binding constraint throughout is **4 Salesforce licences, all consumed at the
start**. Ticket 1.1 recovered one by deactivating the OrgFarm EPIC provisioning
account, which required sweeping every reference that blocked deactivation.
Licence arithmetic shapes most decisions here; check the current position before
proposing anything that needs a user.

## The documentation rules — these are not style preferences

**1. A dated note is never rewritten.** If a document says "today" and is dated
27/08, that means 27/08. Editing it to stay current *falsifies the log*, which is
the one thing this repository cannot afford. Supersede instead: add a dated block
quote at the top, and strike through the text it replaces. `carry-forward-tickets.md`
is the worked example — read how 29/08 and 01/09 were layered onto a 27/08 document
before editing anything in `deliverables/`.

**2. Counts move, so date them.** Never quote a number without an "as at" date, and
recompute against the org rather than copying it forward from an earlier note. The
decision list carries a correction block for exactly this reason: "unanswered for
ten days" became thirteen, and the dollar figures moved with it.

**3. Verify against the org, not against your own notes.** The carry-forward list
opens by saying everything in it was verified against the org that day. Do the same.

**4. Correct the reasoning, not just the conclusion.** When "never logged in" turned
out to be "no interactive human login — three automated logins via `orgfarm_app_1`",
the deactivation decision stayed and the *justification* was reworded, with the
correction logged as its own build-log row. That is the pattern: the decision can
survive while the written record gets fixed.

**5. Record accepted risks inline.** Several Week 1 deletions would have been
reassignments or export-then-delete in production. Each says so in the build log.
A shortcut that is written down is a decision; one that isn't is a defect.

## The stakeholder channel — check before writing to it

Escalations go to Marcus through the Chatter group `SunRise Ops — Escalations`
(`0F9gK000000YDsTSAW`). This channel has broken twice and the history matters:

- **Marcus Head** and **Marcus Lee** are both deactivated. Deactivating Head
  silently removed him from the group. Every post from 29/08 still @mentions Head —
  those are **dead mentions in a group he is not in**.
- The working account as at 01/09 is **Marcus Neil** (`005gK00007HBpc5QAD`, Chatter
  Free, in the group, and the first non-Hemayet account with a proven login). His
  address is `hossainconsulting+marcus@gmail.com` — a real mailbox, which is why
  this attempt worked where the fictional `@sunrise.hossain.dev` addresses did not.

Before treating any escalation as delivered, confirm the recipient is live, in the
group, and has actually logged in. "Posted" is not "received" — that was CF-22, and
it invalidated six earlier escalations.

Other named characters: Jake, Sarah, Zara. None of them has a user account in this org.

## The division of labour

**Hemayet builds all Setup configuration by hand** — users, profiles, permission
sets, duplicate and matching rules, validation rules, reports, dashboards, flows.
The certification tests Setup navigation and so does the job. Do not build config
via the Metadata API on his behalf unless he asks explicitly.

**Claude does:** seed data and one-off remediation Apex, verification queries,
analysis and documentation drafting, build-log entries, code review, and playing
stakeholders in character. Four of the open tickets are marked as writable only by
Hemayet — respect that.

## Repository conventions

| Folder | Contents |
|---|---|
| `force-app/` | Metadata **retrieved from** the org — duplicate/matching rules, layouts, objects, reports |
| `seed/` | Apex that builds the starting data, including its deliberate defects |
| `scripts/` | One-off remediation Apex tied to a specific ticket (`cf-04-…`, `cf-13-…`, `cf-23-…`) |
| `deliverables/` | The written work — the substance |
| `evidence/` | Per-week before/after CSVs and screenshots (`evidence/week-01/`, `week-02/`) |

Keep `seed/` and `scripts/` distinct: `seed/` is re-runnable setup, `scripts/` is a
dated intervention that traces to a ticket.

File naming in `deliverables/`:

- `ticket-N.N-*.md` — scheduled weekly tickets
- `cf-NN-*.md` — carry-forward tickets, numbered from `carry-forward-tickets.md`
- `status-note-marcus-*.md` — escalations, one per decision or ticket
- `sop-*.md` — standing procedures that outlive the engagement
- `week-NN-build-brief.md` — the week's plan, written before the week

## Rules worth enforcing in review

- Deliberate defects in seed data are the exercise. Do not quietly fix data a
  ticket is supposed to find.
- Destructive Apex in `scripts/` gets a before/after CSV in `evidence/` and a
  build-log row. `cf-23` is the example — it closed against 62 records, not the 23
  its name implies, and the record says so.
- Never commit an sfdx auth URL. It is a full credential. See `.gitignore`.
