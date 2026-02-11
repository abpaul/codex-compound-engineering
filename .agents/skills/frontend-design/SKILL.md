---
name: frontend-design
description: "Create distinctive production-grade frontend implementations, including modern vanilla CSS patterns."
---

# Frontend Design

Use this skill when building new UI surfaces, redesigning existing screens, or performing visual refactors.

## Outcome

Produce an interface that is visually distinctive, brand-consistent, and production-ready while meeting accessibility and responsiveness standards.

## Required Design Inputs

Capture or infer these inputs before implementation:

1. Product and audience context (who uses this and why)
2. Screen/surface scope (routes, components, states)
3. Brand direction (3-5 adjectives, tone, constraints)
4. Color constraints (required/forbidden colors, light/dark policy)
5. Typography constraints (preferred families or licensing limits)
6. Reference set (2-5 examples: liked and disliked)
7. Content density and information hierarchy goals
8. Accessibility target (default WCAG AA)
9. Motion preference (expressive, minimal, or reduced)

Use `assets/design-input-checklist.md` and `assets/palette-spec-template.md`.
Use `assets/prompt-scaffold-v0-style.md` and `assets/design-memory-template.md`.

## Intent Before Code (Mandatory)

Before writing any UI code, state explicitly:

- Intent: who this human is, what they must do, and how it should feel
- Palette: chosen colors and why they belong to this product world
- Depth: border/shadow/layer approach and why
- Surfaces: elevation scale and color temperature logic
- Typography: chosen families/scale and why
- Spacing: base unit and scale

If you cannot justify each choice, do not code yet.

## Data Gathering Workflow

1. Auto-harvest local context first:
   - `AGENTS.md`
   - `docs/design-guidelines.md`
   - `docs/prd.md`
   - active sprint docs in `docs/sprints/`
   - existing tokens/components (`--color-*`, `--space-*`, theme config, component files)
2. Build an input coverage table (known vs missing) using the checklist asset.
3. If references are weak, run `$research-external` for 3-5 current examples from official docs or production-grade design systems.
4. If any critical input is missing, ask concise targeted questions (one at a time) using the question bank in the checklist.
5. If visual direction is still under-specified, propose 2-3 concrete design directions and ask the user to pick one.

## Domain Exploration Outputs (Required)

Do not propose a final direction until you produce:

1. Domain concepts (minimum 5) from the product's world
2. Color world (minimum 5) grounded in that domain
3. Signature element unique to this product
4. Default patterns to reject (minimum 3) and what replaces them

## Palette and Visual Direction Protocol

1. Generate a unique palette from brand/context signals, not generic defaults.
2. Express palette as semantic tokens (surface, text, accent, border, success, warning, danger).
3. Prefer `oklch()` and derived tokens for consistency across states.
4. Verify contrast for text and interactive elements against target accessibility level.
5. Include hover/focus/active/disabled states as tokenized variants.

## Anti-Default Safeguards

Run these before presenting output:

1. Swap test: if replacing layout/type with common defaults barely changes identity, redesign.
2. Squint test: hierarchy should remain clear without harsh contrast spikes.
3. Signature test: point to at least 5 concrete places where the signature appears.
4. Token test: token names and usage should feel product-specific, not template-generic.

## Build Protocol (Structured)

1. Draft a design prompt using `assets/prompt-scaffold-v0-style.md`:
   - product surface
   - context of use
   - constraints and taste
2. Enhance the prompt for specificity before coding:
   - replace vague nouns with explicit components and states
   - specify platform, viewport priorities, and interaction expectations
3. Plan in systems, not pages:
   - list components/sections and required states
   - define one signature move for distinctiveness (layout, type, or motion)
4. Implement component-by-component:
   - build one section
   - review/refine it
   - move to next section
5. Preserve design memory:
   - create/update `docs/design-memory.md` from `assets/design-memory-template.md`
   - store chosen tokens, type pair, tone keywords, and interaction rules
6. Run polish loop:
   - `$design-fidelity`
   - `$review-frontend-quality`
   - `$web-automation-testing`

## Implementation Standards

- Intentional visual direction, not generic templates
- Strong typography and tokenized visual system
- Responsive behavior and accessibility by default
- Meaningful motion only
- Clear loading/empty/error states
- Navigation/context should ground the screen as product, not component demo

## CSS Guidance

Use modern vanilla CSS patterns:
- explicit cascade layers
- semantic tokens
- progressive enhancement with modern selectors

Reference: `references/vanilla-css-patterns.md`
Reference: `references/creative-interface-data-requirements.md`
Reference: `references/external-design-skill-benchmarks.md`

## Verification Before Handoff

1. Validate desktop and mobile layouts.
2. Confirm keyboard and focus behavior.
3. Confirm reduced-motion behavior.
4. Capture screenshots for all updated surfaces.
5. List any design tradeoffs made due to technical constraints.
6. Confirm visual identity consistency with `docs/design-memory.md` (if present).
