---
name: conversion-optimization
description: "Optimize conversion with evidence-tiered layout and copy experiments."
---

# Conversion Optimization (Layout + Copy)

Use this skill when the goal is to move a measurable conversion metric (signup, checkout, purchase, lead capture, donation) via layout/IA and/or messaging changes.

## Required Inputs

- surface + page type (landing, PDP, pricing, onboarding, email, in-app prompt)
- funnel stage + primary conversion event
- primary KPI + guardrails (bounce, complaints, unsubscribe, refund, churn, lead quality)
- constraints (brand/legal/analytics/engineering) + traffic/device split
- baseline metric (or explicitly labeled assumptions)

## Evidence Tiers

- `Tier 1`: experiments/benchmarks/peer-reviewed behavioral evidence
- `Tier 2`: measured practitioner case studies or mixed evidence
- `Tier 3`: heuristics only (`low-confidence`)

## Workflow

1. Choose lane(s): `layout`, `copy`, or `both`.
2. Pull 5–8 candidate levers/principles:
   - layout: `references/layout-evidence-matrix.md`
   - copy: `references/copywriting-evidence-matrix.md`
3. Convert each into one hypothesis: `if -> then -> because`, with expected KPI direction + likely moderators.
4. Draft variants:
   - layout: concrete sections/components to change + rationale
   - copy: 3–5 variants (control-safe, clarity-first, motivation-first, optional blended)
5. Run ethics/truth gate:
   - no fabricated social proof or scarcity
   - no deceptive defaults/dark patterns
   - no regulated claims beyond provided constraints
6. Build experiment spec:
   - randomization unit + traffic split
   - KPI definitions + guardrails
   - runtime/sample sizing assumption + stop rule (no peeking stop)
7. Return prioritized recommendations with citations + confidence.

## Output Contract

1. `Prioritized Hypotheses` (`P1/P2/P3`) with tier + citation(s)
2. `Implementation Plan` (layout diffs and/or copy variant table)
3. `Experiment Spec` (KPI/guardrails/split/stop rule)
4. `Conflicts + Unknowns` (null/backfire conditions)

## Assets and References

- examples: `assets/examples.md`
- new-study extraction template (optional): `assets/extraction-template.md`

