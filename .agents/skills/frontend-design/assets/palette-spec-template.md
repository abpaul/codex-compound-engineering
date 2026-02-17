# Token Spec Template (MD3-inspired, brand-custom)

Use this template to define a project-owned visual language before coding. MD3 role names are structural references only.

## Brand Identity Inputs

- Direction name:
- Tone keywords (3-5):
- Illustration style (line/shape/texture/mood):
- Rationale:

## Color Roles (semantic)

- `color.primary`
- `color.onPrimary`
- `color.primaryContainer`
- `color.onPrimaryContainer`
- `color.secondary`
- `color.tertiary`
- `color.surface`
- `color.surfaceContainer`
- `color.surfaceContainerHigh`
- `color.onSurface`
- `color.outline`
- `color.success` / `color.warning` / `color.error`

## Type Roles

- `type.displayLarge`
- `type.headlineMedium`
- `type.titleLarge`
- `type.bodyMedium`
- `type.labelLarge`

## Layout + Depth Roles

- `space.*` scale definition:
- `elevation.level0..level5` usage notes:
- `shape.corner*` family notes:

## Motion Roles

- `motion.duration.short/medium/long`
- `motion.easing.standard/emphasized`
- Reduced-motion fallback behavior:

## Interactive State Layers

- `state.hover`
- `state.pressed`
- `state.focus`
- `state.disabled`

## Contrast Checks

| Pair | Target | Result |
|---|---|---|
| `onSurface` on `surface` | 4.5:1+ | |
| `onPrimary` on `primary` | 4.5:1+ | |
| Focus indicator on `surface` | 3:1+ | |
| Semantic status text on container | 4.5:1+ | |

## Notes

- Use semantic role names; do not define component-specific one-off colors.
- Derive interactive states from role tokens instead of arbitrary manual values.
- Record how illustration style aligns with palette/type/motion direction.
