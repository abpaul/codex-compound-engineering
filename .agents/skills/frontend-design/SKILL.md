---
name: frontend-design
description: "Create distinctive tokenized UI for Rails server-rendered apps using Phlex, Stimulus, and Turbo/Hotwire Native."
---

# Frontend Design

Use this skill for new UI surfaces, redesigns, and visual refactors in a Rails-first architecture.

## Architecture Baseline

- Rails server-rendered views are primary.
- Reusable UI is implemented with Phlex components.
- Stimulus provides client-side behavior.
- Turbo Drive/Frames/Streams power navigation and partial updates.
- Hotwire Native shells reuse the same routes/components via WebView.
- MD3 is a reference system for tokens/anatomy/interaction, not a visual skin.

## Modes

Select mode first:

- `fast`: focused execution with minimal context load and one refinement pass
- `deep`: full design exploration, palette strategy, and multi-pass polish

Use `assets/mode-matrix.md` for mode routing.

## Token Discipline

1. Load only required local context first (`AGENTS.md`, active sprint doc, relevant component files).
2. Load/define token sources early (`tokens.css`, design token config, Phlex component styles).
3. Defer heavy references/assets until blocked.
4. Ask targeted questions when critical design inputs are missing instead of loading broad docs.

## Core Workflow

1. Build input coverage using `assets/design-input-checklist.md`.
2. If coverage is insufficient, ask one question at a time from the checklist.
3. Draft prompt scaffold using `assets/prompt-scaffold-v0-style.md`.
4. Define custom palette, typography, and illustration direction mapped to MD3-inspired semantic tokens using `assets/palette-spec-template.md`.
5. Define/update reusable Phlex component APIs before screen assembly.
6. Implement component-by-component with Stimulus/Turbo behavior integration.
7. Persist style decisions in `docs/design-memory.md` using `assets/design-memory-template.md`.
8. Run anti-default gate before handoff:
   - signature element exists
   - default patterns rejected
   - swap/squint checks pass
9. Run screenshot-driven polish loop for browser and native shell surfaces.

## Deep Mode Add-ons

When mode is `deep`, also require:

1. Domain exploration outputs:
   - 5 domain concepts
   - 5-color world options
   - 1 signature element
2. External reference pull via `$research-external` if local signals are weak.
3. Full post-build polish loop:
   - `$material3-ui-craft`
   - `$design-fidelity`
   - `$review-frontend-quality`
   - `$web-automation-testing`

## Standards

- Avoid generic templates
- No ad-hoc styling in views/components (raw hex, one-off spacing, inline style attributes)
- Use tokenized color/type/spacing/elevation/motion roles
- Include loading/empty/error/disabled/focus states
- Maintain keyboard accessibility and reduced-motion support
- Ensure visual consistency across browser and Hotwire Native shells

## References

- `references/vanilla-css-patterns.md`
- `references/creative-interface-data-requirements.md`
- `references/external-design-skill-benchmarks.md`
