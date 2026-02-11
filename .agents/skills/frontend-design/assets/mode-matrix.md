# Frontend Design Mode Matrix

Choose a mode before running `$frontend-design`.

## Fast Mode

Use when:

- small/medium UI scope
- clear direction already exists
- quick turnaround is preferred

Execution:

1. Load minimal context only
2. Ask up to 3 targeted clarifying questions
3. Implement with one refinement pass
4. Run `$review-frontend-quality`

## Deep Mode

Use when:

- new brand direction or major redesign
- high-visibility surface
- uncertain visual direction

Execution:

1. Full input coverage + domain exploration
2. External references if local signals are weak
3. Multi-pass implementation and refinement
4. Run full polish loop:
   - `$design-fidelity`
   - `$review-frontend-quality`
   - `$web-automation-testing`

## Default

If uncertain, start with `fast`; escalate to `deep` when:

- quality checks fail
- visual identity feels generic
- user requests stronger design differentiation
