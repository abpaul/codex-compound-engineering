---
name: workflow-autonomous
description: "Run end-to-end autonomous execution pipelines (plan -> work -> review -> compound) with optional parallelization."
---

# Workflow Autonomous

## Default Pipeline

1. `workflow-discovery` (if requirements are unclear)
2. `workflow-plan`
3. `workflow-work`
4. `workflow-review`
5. Resolve findings
6. `workflow-compound`

## Rails Checkpoints

At each stage, preserve Rails-first defaults unless explicitly overridden:

- discovery/plan: confirm controller-model-job boundaries, Turbo/Stimulus fit, and Tailwind + daisyUI token-layering policy (no default-theme shipping)
- work: keep server-rendered flow, composable Phlex primitives with controlled variants, tokenized styling, and project brand mapping
- review: validate strong params/authz/N+1/Hotwire behavior plus MD3 structural-only usage and screenshot-polish evidence
- compound: capture reusable Rails-specific learnings

## Artifact Policy

- Keep plan + execution + follow-up context in a single sprint file under `docs/sprints/`.
- Avoid splitting tracking into separate todo directories unless explicitly requested.

## Parallelization Guidance

- Run independent review and test streams in parallel.
- Keep one coordinating agent responsible for final synthesis.

## Context Discipline

- Keep investigation scoped to active sprint tasks; escalate breadth only when risk findings demand it.
