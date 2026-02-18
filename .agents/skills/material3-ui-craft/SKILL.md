---
name: material3-ui-craft
description: "Design, implement, and polish Rails-first UI with Phlex, Stimulus, Turbo/Hotwire Native, and MD3-inspired token systems."
---

# Material Design 3 UI Craft

Use this skill for cohesive Rails web + Hotwire Native UI. Use Material Design 3 for structure (tokens/anatomy/states/accessibility/motion/interaction), not visual identity.

If using M3 Expressive tactics, use `assets/m3-expressive-tactics.md` for hero-moment and usability guardrails.

## Architecture Baseline

- Rails server-rendered HTML is the source of truth.
- Phlex renders reusable UI components.
- Stimulus + Turbo handle client behavior, navigation, and partial updates.
- Hotwire Native shells consume the same routes/components through WebView.
- Tailwind + daisyUI are implementation layers only, mapped to project semantic tokens.
- Project-owned palette/type/illustration are mapped to MD3-inspired tokens.
- Override daisyUI defaults to match project token and brand contracts.

## Modes

- `fast`: align token contract + component states, run one screenshot polish pass
- `deep`: establish full token system + Phlex component inventory + multi-pass screenshot loop across web/native shells

## Required Inputs

- Target surfaces/components
- Shell coverage: `desktop-web` / `mobile-web` / `ios-native-shell` / `android-native-shell`
- Archetype: `saas-dense` / `habit-warm` / `game-shell`
- Brand + accessibility constraints (contrast, reduced motion, focus visibility)

## Guardrails

- Tokens-first always: no raw hex/px in components, no per-screen one-off styling.
- MD3 is structure guidance, not a stock visual theme.
- Every interactive component ships complete states: hover/press/focus/disabled (+ loading/error where relevant).
- Prefer tonal elevation + surface container roles; reserve strong shadows for overlays only.
- Define reusable Phlex component APIs aligned to M3 anatomy (container/content/outline/state layer/icon/supporting text).
- Screenshot polish fixes must land in shared tokens/components, not ad-hoc CSS patches.
- Expressive is deliberate: protect primary-goal clarity, limit hero moments (1–2 max), don’t break patterns/labels, validate with testing.

## Workflow

1. Expressive posture + tactics (per surface): `assets/m3-expressive-tactics.md`
2. Theme contract + scales: `assets/theme-contract.md`, `assets/token-scales.md`
3. Component methodology + structure: `assets/component-methodology.md`, `assets/verification-surfaces.md`
4. Stack mapping:
   - Rails + Phlex token mapping: `references/phlex-token-mapping.md`
   - Turbo/Hotwire Native shell mapping: `references/hotwire-native-mapping.md`
5. Screenshot polish loop: `assets/screenshot-polish-loop.md` using `assets/m3-aesthetic-rubric.md`
6. Apply archetype constraints: `assets/app-archetypes.md`

## Output Contract

Deliver, in order:

1. `Theme contract` + token diff summary
2. `Expressive plan` (tactics per surface + 1–2 hero moments + calm zones)
3. `Component inventory` (Phlex APIs + anatomy + state rules)
4. `Verification surfaces` (web + Hotwire Native)
5. `Screenshots` + rubric scores + token/component fixes applied
6. `Sources used`: `references/sources.md`
