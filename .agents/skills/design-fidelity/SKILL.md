---
name: design-fidelity
description: "Drive implementation fidelity against design intent through compare-analyze-iterate loops."
---

# Design Fidelity

Use this skill after implementation exists and you need tighter visual/interaction fidelity.

## Required Inputs

1. Source of truth design artifact (Figma link, screenshots, or style guide)
2. Target implementation routes/components
3. Breakpoints and states to verify

## Data Gathering Workflow

1. Auto-harvest design references from:
   - `docs/design-guidelines.md`
   - sprint docs
   - linked issues/PRs
   - attached screenshots
2. If the source design artifact is missing, ask the user for it before continuing.
3. Build a comparison checklist across:
   - layout and spacing
   - typography
   - color tokens and contrast behavior
   - interaction states (hover/focus/active/disabled/loading/error)
   - motion behavior and reduced-motion fallback

## Iteration Workflow

1. Compare implementation against source design.
2. List mismatches by severity and user impact.
3. Apply corrections in small batches.
4. Re-check with screenshots at desktop and mobile breakpoints.
5. Repeat until acceptable or blocked by explicit constraints.

## Fidelity Scorecard

Score each pass (1-5):

1. Layout fidelity
2. Typography fidelity
3. Color/token fidelity
4. Interaction-state fidelity
5. Motion fidelity

Treat any category below 4 as requiring another correction pass.

## Output Requirements

- Explicit list of unresolved deltas (if any)
- Screenshot evidence for corrected states
- Note of any intentional deviations and why
