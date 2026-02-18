---
name: project-bootstrap
description: "Initialize project documentation and run a structured PRD/design/README discovery interview."
---

# Project Bootstrap

Use this skill to set up project docs and produce comprehensive foundation documents.

## Default Architecture Baseline

- Rails-first, server-rendered application architecture.
- Phlex for all reusable UI components.
- Stimulus for client-side behavior.
- Turbo/Hotwire Native for navigation and mobile WebView integration.
- Tailwind + daisyUI as implementation accelerators layered on project-owned semantic tokens (color/type/spacing/radii/elevation/motion).
- Define custom brand palette, fonts, and illustration language and map them into semantic tokens.
- Override daisyUI themes as needed; never ship default themes unchanged.
- MD3-inspired token system for color/type/spacing/elevation/motion, with custom project palette/type/illustration.
- MD3 is structural guidance (anatomy/states/accessibility/interaction), not visual identity.
- UI must ship as composable Phlex primitives with controlled variants and screenshot-polish verification.

## Workflow

1. Ensure streamlined layout exists (`docs/brainstorms`, `docs/solutions`, `docs/sprints`, `AGENTS.md`).
   - If missing, run `$setup-project-docs` first.
2. Run a structured interview with the user using `assets/interview-question-bank.md`.
3. Capture interview notes in `docs/brainstorms/YYYY-MM-DD-prd-discovery.md`.
4. Generate:
   - `docs/prd.md` from `assets/prd-template.md`
   - `docs/design-guidelines.md` from `assets/design-guidelines-template.md`
   - `README.md` from `assets/readme-template.md`
   - `docs/sprints/initial-implementation-sprint.md` from `assets/implementation-plan-template.md`
   - enforce architecture baseline unless user explicitly approves deviation
5. Build full MVP task board in the sprint file from `docs/prd.md`:
   - cover every PRD functional requirement, critical non-functional requirement, and core user flow
   - create sprint task IDs using format `S1-TXX`
   - default status: unchecked (`[ ]`) for pending, checked (`[x]`) for complete
   - define dependencies explicitly in the sprint doc to express execution order
   - include acceptance criteria traceable to PRD sections
   - write `docs/sprints/mvp-requirement-mapping.md` with requirement-to-task coverage matrix
6. Run a completeness pass:
   - no unresolved placeholders
   - measurable success criteria
   - explicit non-goals and open questions
   - no uncovered MVP requirements in the coverage matrix
   - `AGENTS.md` includes a complete Available Skills section
7. Review with user and revise until approved.

## Notes

- Ask one question at a time.
- Summarize each section before proceeding.
- Date-stamp docs with the current year (2026).
- PRD should be sufficient for generating actionable sprint tasks without additional invention.
- If a project intentionally deviates from the default architecture baseline, document rationale and approval in PRD + sprint docs.
