---
name: design-fidelity
description: "Drive implementation fidelity against design intent through compare-analyze-iterate loops."
---

# Design Fidelity

Use this skill after implementation exists and you need tighter visual/interaction fidelity.

## Modes

- `quick`: one comparison pass on highest-impact screens
- `deep`: multi-pass across all breakpoints/states until score threshold

## Iteration Workflow

1. Load minimal design reference and target surface context.
2. If source design artifact is missing, ask user before continuing.
3. Compare implementation against source design for:
   - layout/spacing
   - typography
   - token/contrast behavior
   - interaction states
4. Apply corrections in small batches and re-check with screenshots.

## Fidelity Scorecard

Score each pass (1-5):

1. Layout fidelity
2. Typography fidelity
3. Color/token fidelity
4. Interaction-state fidelity
5. Motion fidelity

In `deep` mode, treat any category below 4 as requiring another pass.

## Output Requirements

- Explicit list of unresolved deltas (if any)
- Screenshot evidence for corrected states
- Note of any intentional deviations and why
