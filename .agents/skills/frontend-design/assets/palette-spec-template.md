# Palette Spec Template

Use this template to define a distinctive, accessible palette before coding.

## Palette Identity

- Direction name:
- Tone keywords (3-5):
- Rationale:

## Core Tokens

- `--color-surface`
- `--color-surface-elevated`
- `--color-text-primary`
- `--color-text-secondary`
- `--color-accent`
- `--color-border`
- `--color-success`
- `--color-warning`
- `--color-danger`

## Interactive States

- `--color-accent-hover`
- `--color-accent-active`
- `--color-focus-ring`
- `--color-disabled`

## Contrast Checks

| Pair | Target | Result |
|---|---|---|
| text-primary on surface | 4.5:1+ | |
| text-secondary on surface | 4.5:1+ | |
| accent on surface | 3:1+ for UI components, 4.5:1+ for text | |
| focus ring on surface | clearly visible | |

## Notes

- Prefer semantic token names over component-specific hardcoded colors.
- Prefer derived state colors from core tokens instead of independent random values.
