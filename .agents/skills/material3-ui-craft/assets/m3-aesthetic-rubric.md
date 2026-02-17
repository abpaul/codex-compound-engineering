# M3 Aesthetic Rubric (token-grounded)

Score each screen. Fix the highest-impact token issues first.

## Critical fails (must be zero)

- Missing/weak focus indicator on web
- Contrast failures for text or key affordances
- No pressed feedback on mobile
- Visible style drift between browser and native shell screenshots
- Random spacing values outside the scale
- Inconsistent component state behavior across the screen

## Scoring (100 points)

1. **Hierarchy via type tokens (20)**
   - Title/primary action obvious without color
   - 3–6 type roles used, consistently
   - Body readability is comfortable

2. **Grouping via surface roles (20)**
   - `surface` vs `surfaceContainer*` used consistently for meaning
   - Figure–ground is clear without heavy shadows
   - Overlays feel above content (scrim + elevation)

3. **Spacing rhythm + alignment (20)**
   - Layout snaps to the spacing scale
   - Keylines align across rows/sections
   - Section breaks are visibly distinct from within-section spacing

4. **State feedback (20)**
   - Hover/press/focus/disabled states exist and match across components
   - State layers are visible but restrained
   - Disabled states preserve legibility and meaning

5. **Elevation discipline (10)**
   - Tonal elevation is used first
   - Shadows are reserved (primarily overlays)
   - No “shadow noise” on every surface

6. **Brand-custom premium feel (10)**
   - Brand shows through tokens (seed/tones/type/shape), not one-offs
   - Looks intentional, not like stock component defaults

## Token-level fix heuristics

When a score is low, prefer these fixes:

- Too noisy/cheap → reduce elevation variety, switch to surface containers + hairlines, reduce accent color usage.
- Too flat/confusing → increase surface role contrast, add outlineVariant, reserve a single overlay elevation for dialogs/menus.
- Poor hierarchy → remap roles (`headlineSmall`/`titleLarge`) and increase whitespace at section boundaries.
- Weak affordances → strengthen state layer contrast and add explicit focus ring token.
