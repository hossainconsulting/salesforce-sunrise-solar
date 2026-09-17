# SOP — User provisioning & deactivation

**SunRise Solar · Owner: Hemayet Hossain · v1.0 — 18/09/2026**

**Scope:** creating, verifying, and deactivating internal Salesforce users.

The explanations in sections 1, 3 and 4 were completed on 18/09/2026
under CF-08. Section 4 uses Ben's documented provisioning experience;
the previously requested attribution to Sarah was not substantiated
in the notes reviewed.

## Version history

| Version | Date | Change |
|---|---|---|
| v1.0 | 19/08/2026 | Initially labelled v1.0 with four sections unfinished. |
| v0.9 DRAFT | 26/08/2026 | Returned to draft to reflect the unfinished sections. |
| v0.9 DRAFT | 02/09/2026 | Freeze-versus-deactivate explanation completed under CF-09. |
| v0.9 DRAFT | 03/09/2026 | Outstanding-section count corrected from four to three. |
| v1.0 | 18/09/2026 | Completed sections 1, 3 and 4 under CF-08; clarified the policy on copying user access. |

---

## 1. Pre-flight: confirm a licence FIRST

Before touching `Setup → Users`:

- `Setup → Company Information → User Licenses` → find the row for the licence
  type you need (usually **Salesforce**) and confirm **Remaining ≥ 1**.
- No licence available? **Stop.** Do not improvise. Escalate to the admin lead or
  manager with options: (a) purchase, (b) deactivate an unused account (see §6),
  (c) defer the start date. **Never repurpose an active user's record.**

Check licence availability and suitability before creating the user.
On 19/08/2026, all four Salesforce licences were already used.
The licence determines which profiles and object access are available,
so a spare Platform licence is not automatically a suitable substitute.
Checking first gives time to escalate a shortage without rushing into
deactivating or re-licensing an existing user whose records and access
still need to be protected.

## 2. Create the user — in this order

`Setup → Users → New User`. Never clone (see §4).

1. **Licence type** — determines which profiles are even offered.
2. **Profile** — least privilege that does the job (sales reps: Standard User).
3. **Role** — place them in the hierarchy (e.g. Newcastle Sales Team under Sales
   Manager). No user hangs off the top of the tree.
4. **Manager field** — the person they report to. Drives approval routing. Not
   optional, even when nobody asks for it.
5. **Permission sets** — only what is specified in writing. Default: none.

Also set: username on the `firstname.lastname@domain` pattern, timezone
Australia/Sydney, locale en_AU, currency AUD. Leave the password-email checkbox
unticked until their actual start date.

## 3. The Marketing User checkbox

**Marketing User** is a checkbox on the *user record*, not a profile permission.
It gates Campaign create, edit and delete — object permissions can say yes and the
save will still fail if the checkbox is off. It is off by default, including for
System Administrators.

**Policy:** leave it unticked unless the request states the business reason.

The Phase 0 error `DML operation Delete not allowed on Campaign`
showed why this check deserves an explicit step: the error identifies
the failed operation without explaining which access requirement is
missing. Check the user's licence, Campaign object permissions and
Marketing User checkbox separately, including for administrators.
A permission set cannot overcome a licence that excludes Campaigns,
so it would not resolve Priya's Platform licence restriction.

## 4. Why we never clone users

Create each user from the approved provisioning request rather than
treating another user's access as the template. Copying an existing
access configuration can carry forward permissions the new role does
not require. Select the profile, role and permission sets deliberately,
and verify each grant against the written requirements.

When I created Ben, Salesforce saved the record with Role, Manager
and Title empty. A successful Save did not prove that provisioning
was complete. Done means the user's licence, profile, role, manager
and permission sets match the agreed job requirements, with the
required user details completed. After saving and before handover,
I will review those settings against the provisioning request and
verify that the user can perform the intended work without unnecessary
access.

## 5. Verification — every new user, no exceptions

- `Setup → Users → [user] → Login`. If the link is missing, enable it at
  `Setup → Login Access Policies` ("Administrators Can Log in as Any User").
- Confirm: the correct apps are visible; they can create the records their role
  needs; they **cannot** reach admin or Setup areas.
- Log out of their session and record "verified via Login As" on the ticket.

## 6. Deactivating a user safely

Salesforce blocks deactivation while the user holds system references, and reports
them **one error at a time**. Clear these before you start:

- **Support Settings** — Automated Case User, Default Case Owner
- **Case & Lead assignment rules** — every entry's Assign To / Notify
- **Case escalation rules** — every entry's *action rows*, both fields
- **Web-to-Lead** — default record creator
- **Lead Settings** — Default Lead Owner
- **Process Automation Settings** — Default Workflow User

Reassign each to the admin, or to a queue where a queue is the correct owner.

Three things that cost time on 19/08 and are worth knowing in advance:

1. References held by **inactive** rules still block deactivation.
2. A new error message means the previous reference cleared. Iterate; don't
   conclude it's impossible.
3. In production, **export or document any config before deleting it** to clear a
   reference. Record the deletion in the build log either way.

### Freeze vs. deactivate

**Written in full in [sop-user-deactivation.md](sop-user-deactivation.md) §"Freeze vs.
deactivate" (v1.2, 02/09/2026)** — this TODO always said *"Deliverable for Ticket 1.2,
expand there"*, and it now exists there. The short form:

> **In a contested exit, freeze the same day.** It cuts login access just as immediately
> as deactivation, but leaves the licence, ownership and exit-day record state untouched.
> **Deactivation is the end of offboarding, never the start.**

One rule, one home. Provisioning points at it rather than carrying a second copy that can
drift out of step with the first.

### Order of operations when someone leaves

**Transfer records → freeze → deactivate.** Deactivating an owner first orphans
their records and breaks reports, and unpicking it is tedious.

## 7. Record keeping

Every provisioning and deactivation gets a build-log entry: date, component,
change, reason, verification, follow-ups. Unfinished work gets a written
provisioning record so the next admin can execute it without re-doing the
research.
