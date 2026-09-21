# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this project.

## What this is

Engagement workspace for the **SunRise Solar Solutions internship** — a twelve-week
Salesforce Administrator simulation. Hemayet plays the incoming admin at a fictional
47-person NSW solar installer whose org has been unmaintained for six months.
SunRise Solar Solutions Pty Ltd is fictional; no real customer data is in here.

This is the most advanced of the nine engagement repos — Weeks 1 and 2 are built and
written up. Read `deliverables/build-log.md` before doing anything: it is the
authoritative record of org state, and it is more current than this file.

## The org

Target org alias **`sunrise`** — a Developer Edition org.

```bash
sf org display --target-org sunrise
sf data query --target-org sunrise --query "SELECT COUNT() FROM User WHERE IsActive = true"
```

The licence position is the constraint that shapes nearly every decision in this
engagement, and it is tight: **4 of 4 Salesforce licences used, 6 Salesforce Platform
licences spare** as of 21/08/2026. Check it before proposing anything that needs a
user, and re-check after, because "deactivated" is not "licence recovered" until
Company Information says so.

Two licence walls have already been hit and are worth remembering:

- **User licences** — Company Information shows these.
- **Feature licences** (e.g. Salesforce CRM Content) — Company Information does *not*
  show these, and the failure surfaces as `LICENSE_LIMIT_EXCEEDED` on insert. Set
  `UserPermissionsSFContentUser = false` when creating Platform users who don't need it.

## The division of labour on this engagement

**Hemayet builds all Setup configuration by hand** — users, roles, profiles, duplicate
and matching rules, validation rules, reports, assignment rules. The Administrator
certification tests Setup navigation and so does the job. Do not build config via the
Metadata API on his behalf unless he asks explicitly.

**Claude does:** seed data (Apex anonymous, in `seed/`), remediation and migration
scripts (`scripts/`), verification queries, evidence CSV extraction, code review,
deployment mechanics, and drafting deliverables. Claude also plays stakeholders in
character — **Marcus** is the manager who receives status notes and makes the decisions
Hemayet escalates; **Zara** appears in Ticket 1.3.

## Apex gotchas this engagement has already paid for

- **`MIXED_DML_OPERATION`.** User is a setup object. User DML and Account DML cannot
  share a transaction — the whole script rolls back and can fail silently. Split the
  script, or use `System.runAs`/`@future`. `seed/week-01-leavers-setup.apex` was
  corrected for exactly this.
- **Suppress welcome emails** on seeded users:
  `DMLOptions.EmailHeader.triggerUserEmail = false`. These users exist to be
  offboarded; nobody should get mail about them.
- **Freeze lives on `UserLogin.IsFrozen`, not `User`.** This is the detail most people
  miss.

## The ordering rule that is non-negotiable

Offboarding is **freeze → transfer → deactivate**, in that order. Freeze is an urgent
security action; transfer is a slow data action. Doing the slow one first leaves a
leaver able to log in while it runs. `deliverables/sop-user-deactivation.md` was
corrected once for stating this backwards — do not reintroduce the old order.

## Documentation standards

`deliverables/` is the substance and the interview evidence. The configuration proves
the clicks happened; the documents prove the thinking did.

- **Every change goes in `deliverables/build-log.md`** with its date, the component,
  the change, and the requirement it traces to. Corrections are appended as new rows,
  never edited over — the log shows the mistake and the fix, and that is the point.
- **Claim only what was verified.** "Verified 19/08" in the log means a query or a
  screenshot backs it. An earlier entry was corrected from "never logged in" to
  "no interactive human login" after `LoginHistory` contradicted it. That standard holds.
- **Accepted risks are recorded, not hidden.** Where a training-org shortcut was taken
  (deleting assignment rules rather than reassigning them), the log says what production
  would have required instead.
- **Dates are Australian** — `dd/mm/yyyy`. The org is `en_AU`, `Australia/Sydney`.
- `evidence/week-NN/` holds the before/after CSVs and screenshots for that week.

## Never commit

Auth files and sfdx auth URLs — an auth URL is a full credential. `.gitignore` covers
`**/*authFile*.json`, `**/*sfdxAuthUrl*`, `.env*`, `.sf/` and `.sfdx/`. A credential
that reaches git history has to be *rotated*, not deleted.

## Agent workflow

Superpowers is expected to be installed as a **user-level plugin**
(`/plugin install superpowers@claude-plugins-official`), not vendored into this repo.
Note that most work here is Salesforce Setup configuration and Apex anonymous scripts
with no test runner, so the TDD and red/green skills apply only to the JS helpers in
`seed/`. The verification discipline applies everywhere: prove it against a query
before writing it in the build log.
