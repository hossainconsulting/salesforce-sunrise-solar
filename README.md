# SunRise Solar Solutions Internship

> **This is a simulation, not client work.** SunRise Solar Solutions Pty Ltd is a fictional company.
> This repository documents a self-directed Salesforce project built to develop
> and evidence implementation skills. No real customer data appears anywhere in it.

**Certification track:** Administrator
**Salesforce org:** Developer Edition (CLI alias `sunrise`)
**Scope:** 12 weeks | user management, data quality, executive reporting, attribution, automation, custom objects, Service Cloud, security audit, handover

## The brief

Twelve weeks as the incoming admin at a 47-person NSW solar installer whose org has been unmaintained for six months.

## What's in here

| Folder | Contents |
|---|---|
| `force-app/` | Salesforce metadata retrieved from the org — the configuration itself |
| `seed/` | Apex scripts that build the starting data, including its deliberate defects |
| `deliverables/` | The written work: design docs, SOPs, analyses, runbooks |
| `evidence/` | Before/after screenshots and test results per phase |

`deliverables/` is the substance. The configuration proves the clicks happened;
the documents prove the thinking did.

## Progress

**In progress — Week 4 opened.** The latest reviewed session is dated
7 September 2026. This is a snapshot of documented simulation work,
not a live verification of the Salesforce org.

Recorded outcomes include:

- CF-02: all six simulated address confirmations completed.
- CF-20: ten potential duplicate pairs assessed; seven recorded as
  separate households and three as the same household. Assessment
  completion does not mean the proposed account merges were executed.
- CF-13: a partial Contact merge reduced the recorded count from
  137 to 98; 21 groups remained on hold.
- CF-04: 666 Opportunities moved into interim custodianship.
- CF-23: an ownership sweep recorded 185 of 187 checked objects
  as clear, with two unqueryable.
- CF-07: the administrator recorded the Monday duplicate-queue
  check as an interim control; permanent handover remained blocked.

Week 4 covers campaign attribution, lead capture and lead management.
Its brief records 150 seeded leads as uncontacted. These are planned
work areas, not completed deliverables.

Remaining work includes the CF-26 list-view filtering and scope defect,
licence-dependent access, held merge decisions, role hierarchy and
default-owner configuration, and unfinished SOP sections.

## Start with the evidence

| Area | Record |
| --- | --- |
| Latest reviewed session | [7 September session](deliverables/sessions/2026-09-07.md) |
| Decisions and outstanding work | [Carry-forward ticket register](deliverables/carry-forward-tickets.md) |
| Data quality | [Data-quality audit](deliverables/ticket-2.1-data-quality-audit.md) |
| Duplicate controls | [Duplicate-management design](deliverables/ticket-2.2-duplicate-management-design.md) |
| Pipeline reporting | [Pipeline-hygiene report](deliverables/ticket-2.3-pipeline-hygiene-report.md) |
| Ownership verification | [Ownership sweep](evidence/week-03/cf-23-ownership-sweep-03-09.md) |
| Week 4 scope | [Week 4 build brief](deliverables/week-04-build-brief.md) |

The [build log](deliverables/build-log.md) records earlier changes and
reasoning. Historical entries retain their original context; consult
dated updates in the ticket register and session notes before treating
an older outstanding item as current.

All figures describe the fictional training org. They are not client
results, revenue generated or independently verified business outcomes.

---

Built by [Hemayet Hossain](https://github.com/hossainconsulting) · Sydney, Australia
Portfolio: [portfolio.hossainconsulting.com](https://portfolio.hossainconsulting.com)

## AI assistance

OpenAI Codex assisted with documentation drafting, evidence review, and
implementation guidance. Hemayet Hossain reviewed the work and executed
the Salesforce and Git operations.

## Verified Salesforce credentials

Hemayet Hossain holds four credentials verified through Salesforce's public credential record: Salesforce Certified Agentforce Specialist, Salesforce Certified Platform Administrator II, Salesforce Certified Platform App Builder, and Salesforce Certified Platform Administrator.

[View the public Salesforce credential record](https://trailhead.salesforce.com/en/credentials/certification-detail-print/?searchString=/EMytG9drkgo/H4/0tgVITa/sw2U8vhbkvkc3jqlaJgauY5cCr+PvNo4YAw1Ki9f) · [Review the Salesforce User Lifecycle SOP](https://github.com/hossainconsulting/salesforce-user-lifecycle-sop)
