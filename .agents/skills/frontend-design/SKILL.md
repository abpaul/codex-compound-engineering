---
name: frontend-design
description: "Create distinctive production-grade frontend implementations, including modern vanilla CSS patterns."
---

# Frontend Design

Use this skill for new UI surfaces, redesigns, and visual refactors.

## Modes

Select mode first:

- `fast`: focused execution with minimal context load and one refinement pass
- `deep`: full design exploration, palette strategy, and multi-pass polish

Use `assets/mode-matrix.md` for mode routing.

## Token Discipline

1. Load only required local context first (`AGENTS.md`, active sprint doc, relevant component files).
2. Defer heavy references/assets until blocked.
3. Ask targeted questions when critical design inputs are missing instead of loading broad docs.

## Core Workflow

1. Build input coverage using `assets/design-input-checklist.md`.
2. If coverage is insufficient, ask one question at a time from the checklist.
3. Draft prompt scaffold using `assets/prompt-scaffold-v0-style.md`.
4. Define palette and semantic tokens with `assets/palette-spec-template.md`.
5. Implement component-by-component.
6. Persist style decisions in `docs/design-memory.md` using `assets/design-memory-template.md`.
7. Run anti-default gate before handoff:
   - signature element exists
   - default patterns rejected
   - swap/squint checks pass

## Deep Mode Add-ons

When mode is `deep`, also require:

1. Domain exploration outputs:
   - 5 domain concepts
   - 5-color world options
   - 1 signature element
2. External reference pull via `$research-external` if local signals are weak.
3. Post-build polish loop:
   - `$design-fidelity`
   - `$review-frontend-quality`
   - `$web-automation-testing`

## Standards

- Avoid generic templates
- Use tokenized color/typography/spacing
- Include loading/empty/error/disabled/focus states
- Maintain keyboard accessibility and reduced-motion support

## References

- `references/vanilla-css-patterns.md`
- `references/creative-interface-data-requirements.md`
- `references/external-design-skill-benchmarks.md`
