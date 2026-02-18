# Token Roles + Default Scales (Material Design 3)

Use **roles and scales**, not raw values, so the UI stays coherent across screens and platforms.

## Naming

Prefer M3-style role names (e.g., `primary`, `onPrimary`, `surfaceContainerHigh`, `labelLarge`) and treat them as the single source of truth.

## Spacing (4dp rhythm)

Default spacing scale (4dp step). Recommended to use *only* these steps:

```text
space[0]=0
space[1]=4
space[2]=8
space[3]=12
space[4]=16
space[5]=20
space[6]=24
space[7]=32
space[8]=40
space[9]=48
space[10]=56
space[11]=64
space[12]=72
space[13]=80
space[14]=96
```

Density presets (map, don’t invent new values):

- `saas-dense`: prefer `8/12/16/20/24`, use `32` for section breaks
- `habit-warm`: prefer `12/16/20/24/32`, use `40/48` for section breaks
- `game-shell`: prefer `12/16/24/32/40`, use `48/56` for modals/menus

## Typography (type roles, not ad-hoc styles)

Default M3 role set:

- Display: `displayLarge/Medium/Small`
- Headlines: `headlineLarge/Medium/Small`
- Titles: `titleLarge/Medium/Small`
- Body: `bodyLarge/Medium/Small`
- Labels: `labelLarge/Medium/Small`

Constraints:

- Per screen: target **3–6** roles total (dense dashboards can go to 7–8, but only if clearly structured).
- Don’t “fix hierarchy” with random weights; fix the role mapping.
- Keep numerals legible; validate i18n (long strings, RTL, CJK).

Default starting scale (web px; treat as a baseline you can tune within brand constraints):

```text
displayLarge   57 / 64  (400)
displayMedium  45 / 52  (400)
displaySmall   36 / 44  (400)
headlineLarge  32 / 40  (400)
headlineMedium 28 / 36  (400)
headlineSmall  24 / 32  (400)
titleLarge     22 / 28  (400–500)
titleMedium    16 / 24  (500)
titleSmall     14 / 20  (500)
bodyLarge      16 / 24  (400)
bodyMedium     14 / 20  (400)
bodySmall      12 / 16  (400)
labelLarge     14 / 20  (500)
labelMedium    12 / 16  (500)
labelSmall     11 / 16  (500)
```

Recommended tuning ranges:

- Dense SaaS: body can drop 1px; keep line-height ≥ 1.35× for body.
- Habit/journaling: body can increase 1px; increase line-height for long-form comfort.
- Game shell: titles can increase 1–2px; keep labels crisp for buttons/chips.

## Emphasized typography (Expressive)

Some M3 Expressive guidance introduces **emphasized** type styles meant to create brief editorial moments and reinforce hierarchy.

Rules of thumb:

- Treat emphasis as a **tokenized variant** (not ad-hoc weight tweaks).
- Use emphasis primarily for **headlines** and **primary actions**.
- Per screen: keep emphasis rare (often 1–2 emphasized elements); too much feels noisy and harms scan.
- Validate readability (contrast, long strings, small screens) and ensure it still works in reduced-motion / low-attention contexts.

## Shape (corner tokens)

Use shape tokens (dp/px) and keep a single “dominant” corner across a product:

```text
cornerNone = 0
cornerExtraSmall = 4     (range 2–4)
cornerSmall = 8          (range 6–10)
cornerMedium = 12        (range 10–14)
cornerLarge = 16         (range 14–18)
cornerExtraLarge = 24    (range 20–28)
cornerFull = 9999
```

Rules:

- Use `cornerFull` only for pills/chips/avatars where the geometry is intentional.
- Cards/dialogs should usually be `cornerLarge` or `cornerExtraLarge` (brand-dependent).

## Expressive shapes (library + morph)

If you adopt a broader shape library (beyond corner radii), treat it as **decorative + attentional**:

- Define a small set of reusable shape roles (e.g., avatar crop, hero media mask, progress ornament) and map them to platform implementations.
- Use shape morph to reinforce **state changes** and **transitions** (selected, expanded, in-progress), not as constant decoration.
- Respect reduced-motion: shape morph should degrade to a simple state change without losing meaning.

## State layers (interaction feedback)

Define state overlays as tokens; apply them consistently on top of the **container**.

Recommended defaults (treat as tokens you can tune):

```text
stateLayer.colorRole = onSurface (or onPrimary for filled primary surfaces)
stateLayer.hoverOpacity   = 0.08
stateLayer.focusOpacity   = 0.12
stateLayer.pressedOpacity = 0.12
stateLayer.draggedOpacity = 0.16

disabled.containerOpacity = 0.12
disabled.contentOpacity   = 0.38
```

Rules:

- Web: focus must be visible (don’t remove outlines without a replacement).
- Mobile: pressed feedback must be immediate (state layer and/or ripple, optional haptics).
- Disabled is not “opacity everything”: preserve legibility and contrast for text that remains important.

## Elevation (tonal first, shadow last)

- Use **surface container roles** to represent most depth differences.
- Use shadows primarily for overlays (menus/dialogs) and when separation is otherwise unclear.
- Avoid “shadow on every card” in dense UIs; use `outlineVariant` + spacing + surface containers instead.

Practical mapping (default):

```text
level0: surface
level1: surfaceContainerLow
level2: surfaceContainer
level3: surfaceContainerHigh
level4: surfaceContainerHighest   (overlays: menus/dialogs)
level5: reserved (rare; only if level4 is insufficient and accessibility stays intact)
```

Border guidance:

- If a surface is informational (tables, cards in dense grids), prefer `outlineVariant` over shadows.
- If a surface is transient (menus, dialogs), elevation + scrim is usually clearer than borders alone.

## Motion (durations + easing tokens)

Define motion as tokens:

- Durations: `short1/2/3`, `medium1/2`, `long1/2`
- Easings: `standard`, `standardDecelerate`, `standardAccelerate`, `emphasized*`

Rules:

- Interaction feedback (press/hover/focus) is fast; navigation/overlays can be slower.
- Always respect reduced-motion settings; no essential meaning in motion alone.

Default motion values (recommended starting point):

```text
duration.short1  = 100ms  (taps/press feedback)
duration.short2  = 150ms  (hover/focus)
duration.short3  = 200ms  (small UI state changes)
duration.medium1 = 250ms  (component expand/collapse)
duration.medium2 = 300ms  (sheet/dialog enter)
duration.long1   = 450ms  (large transitions)
duration.long2   = 600ms  (rare; only for non-blocking atmospherics)

easing.standard            = cubic-bezier(0.4, 0, 0.2, 1)
easing.standardDecelerate  = cubic-bezier(0, 0, 0.2, 1)
easing.standardAccelerate  = cubic-bezier(0.4, 0, 1, 1)

easing.emphasized*         = map to your platform’s emphasized tokens if available;
                            otherwise set equal to the nearest `standard*` curve.
```

## Spring motion (Expressive)

If your platform supports physics-based motion, define spring tokens and use them consistently:

- `spring.spatial`: movement/resize/position changes (clear, predictable, “physical”)
- `spring.effects`: color/opacity/blur changes (smooth and unobtrusive)

Implementation varies by platform; keep the *intent* stable: motion should improve clarity and feel responsive, not slow down completion.
