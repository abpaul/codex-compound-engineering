---
name: material3-ui-craft
description: "Design, implement, and polish Rails-first UI with Phlex, Stimulus, Turbo/Hotwire Native, and MD3-inspired token systems."
---

# Material Design 3 UI Craft (Reference-Only, brand-custom)

Use this skill when UI must feel premium and cohesive across Rails web and Hotwire Native shells. Use Material Design 3 strictly as a reference framework for token roles, component anatomy, state layers, accessibility, motion, and interaction rules, but do not replicate Google's visual styling.

## Architecture Baseline

- Rails server-rendered HTML is the source of truth.
- Phlex renders all reusable UI components.
- Stimulus handles client-side behavior.
- Turbo Drive/Frames/Streams handle navigation and partial updates.
- Hotwire Native shells consume the same routes/components through WebView.
- Every project defines custom color palette, typography, and illustration style mapped to MD3-inspired tokens.

## Modes

- `fast`: align token contract + component states, run one screenshot polish pass
- `deep`: establish full token system + Phlex component inventory + multi-pass screenshot loop across web/native shells

## Required Inputs

Ask for any missing:

- Target surfaces/components to standardize
- Shell coverage: `desktop-web` / `mobile-web` / `ios-native-shell` / `android-native-shell`
- App archetype: `saas-dense` / `habit-warm` / `game-shell`
- Brand constraints: color direction, typography constraints, illustration style direction, tone words
- Accessibility: contrast target, reduced-motion requirement, focus visibility requirement

## Guardrails

- Tokens-first always: no raw hex/px in components, no per-screen one-off styling.
- MD3 is structure guidance, not a stock visual theme.
- Every interactive component ships complete states: hover/press/focus/disabled (+ loading/error where relevant).
- Prefer tonal elevation + surface container roles; reserve strong shadows for overlays only.
- Define reusable Phlex component APIs aligned to M3 anatomy (container/content/outline/state layer/icon/supporting text).
- Screenshot polish fixes must land in shared tokens/components, not ad-hoc CSS patches.

## Workflow

1. Theme contract + scales: `assets/theme-contract.md`, `assets/token-scales.md`
2. Component methodology + structure: `assets/component-methodology.md`, `assets/verification-surfaces.md`
3. Stack mapping:
   - Rails + Phlex token mapping: `references/phlex-token-mapping.md`
   - Turbo/Hotwire Native shell mapping: `references/hotwire-native-mapping.md`
4. Screenshot polish loop: `assets/screenshot-polish-loop.md` using `assets/m3-aesthetic-rubric.md`
5. Apply archetype constraints: `assets/app-archetypes.md`

## Output Contract

Deliver, in order:

1. `Theme contract` (light/dark + semantic statuses + illustration direction) + token diff summary
2. `Component inventory` with Phlex API signatures, part roles, and state behavior rules
3. `Verification surfaces` paths for web and Hotwire Native shells
4. `Screenshots` + rubric scores + token/component-level fixes applied
5. `Sources used`: `references/sources.md`
