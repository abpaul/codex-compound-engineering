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

## Parallelization Guidance

- Run independent review and test streams in parallel.
- Keep one coordinating agent responsible for final synthesis.
