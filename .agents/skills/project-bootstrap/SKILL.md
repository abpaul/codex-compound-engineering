---
name: project-bootstrap
description: "Initialize project documentation and run a structured PRD/design/README discovery interview."
---

# Project Bootstrap

Use this skill to set up project docs and produce comprehensive foundation documents.

## Workflow

1. Ensure compound layout exists (`docs/brainstorms`, `docs/solutions`, `docs/plans`, `todos`, `AGENTS.md`).
2. Run a structured interview with the user using `assets/interview-question-bank.md`.
3. Capture interview notes in `docs/brainstorms/YYYY-MM-DD-prd-discovery.md`.
4. Generate:
   - `docs/prd.md` from `assets/prd-template.md`
   - `docs/design-guidelines.md` from `assets/design-guidelines-template.md`
   - `README.md` from `assets/readme-template.md`
   - `docs/plans/initial-implementation-plan.md` from `assets/implementation-plan-template.md`
5. Generate full MVP todo backlog from `docs/prd.md`:
   - cover every PRD functional requirement, critical non-functional requirement, and core user flow
   - create todo files in `todos/` using `assets/mvp-todo-template.md`
   - naming format: `{issue_id}-{status}-{priority}-{description}.md`
   - default status: `ready` for fully defined work, `pending` for ambiguous work
   - default priority: `p1` for MVP blockers, `p2` for supporting work, `p3` for post-MVP
   - define dependencies explicitly via issue IDs to express execution order
   - include acceptance criteria traceable to PRD sections
   - write `docs/plans/mvp-todo-mapping.md` with requirement-to-todo coverage matrix
6. Run a completeness pass:
   - no unresolved placeholders
   - measurable success criteria
   - explicit non-goals and open questions
   - no uncovered MVP requirements in the coverage matrix
7. Review with user and revise until approved.

## Notes

- Ask one question at a time.
- Summarize each section before proceeding.
- Date-stamp docs with the current year (2026).
- PRD should be sufficient for generating actionable MVP todos without additional invention.
