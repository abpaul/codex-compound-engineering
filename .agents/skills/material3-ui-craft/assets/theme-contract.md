# Theme Contract (Material Design 3)

This skill assumes a theme contract compatible with Material Design 3 token roles across Rails web and Hotwire Native shells. Use MD3 as a structural reference only, then map your own brand palette, typography, and illustration language into tokens.

## Brand customization (not “stock Google”)

Keep the M3 role model, but customize via tokens:

- **Seed color(s)**: choose a brand primary seed; use `tertiary` for a personality accent.
- **Type**: pick a high-quality font and map it to the full type scale (don’t mix arbitrary weights).
- **Type emphasis (Expressive)**: allow tokenized emphasized styles for brief editorial moments (headlines/primary actions), used sparingly.
- **Illustration**: define a product-specific style direction and map it to tokenized constraints.
- **Shape**: choose a dominant corner family and use it consistently across components; optionally adopt a small “shape library” for decorative masks and shape morph moments.
- **Surface character**: tune `surface*` roles (cool vs warm neutrals) to match product tone.
- **Motion**: tune durations/easing for your archetype (calm SaaS vs expressive game shell), while respecting reduced-motion; optionally define spring tokens for spatial/effect motion.

## 1) Theme object schema (TypeScript)

Use this as a reference schema (adapt to your stack).

```ts
export type Md3Mode = "light" | "dark";

export interface Md3ColorScheme {
  // Key colors
  primary: string;
  onPrimary: string;
  primaryContainer: string;
  onPrimaryContainer: string;
  secondary: string;
  onSecondary: string;
  secondaryContainer: string;
  onSecondaryContainer: string;
  tertiary: string;
  onTertiary: string;
  tertiaryContainer: string;
  onTertiaryContainer: string;

  // Status (M3 defines error; add others as semantic extensions)
  error: string;
  onError: string;
  errorContainer: string;
  onErrorContainer: string;

  // Surfaces + content
  background: string;
  onBackground: string;
  surface: string;
  onSurface: string;
  surfaceVariant: string;
  onSurfaceVariant: string;

  // Surface containers (M3)
  surfaceDim: string;
  surfaceBright: string;
  surfaceContainerLowest: string;
  surfaceContainerLow: string;
  surfaceContainer: string;
  surfaceContainerHigh: string;
  surfaceContainerHighest: string;

  // Outlines + inverse
  outline: string;
  outlineVariant: string;
  inverseSurface: string;
  inverseOnSurface: string;
  inversePrimary: string;

  // Tint/scrim
  surfaceTint: string;
  scrim: string;
}

export interface SemanticStatus {
  success: string;
  onSuccess: string;
  successContainer: string;
  onSuccessContainer: string;

  warning: string;
  onWarning: string;
  warningContainer: string;
  onWarningContainer: string;

  info: string;
  onInfo: string;
  infoContainer: string;
  onInfoContainer: string;
}

export interface Md3TypeStyle {
  fontFamily: string;
  fontSizePx: number;
  lineHeightPx: number;
  fontWeight: number;
  letterSpacingEm?: number;
}

export interface Md3TypeScale {
  displayLarge: Md3TypeStyle;
  displayMedium: Md3TypeStyle;
  displaySmall: Md3TypeStyle;
  headlineLarge: Md3TypeStyle;
  headlineMedium: Md3TypeStyle;
  headlineSmall: Md3TypeStyle;
  titleLarge: Md3TypeStyle;
  titleMedium: Md3TypeStyle;
  titleSmall: Md3TypeStyle;
  bodyLarge: Md3TypeStyle;
  bodyMedium: Md3TypeStyle;
  bodySmall: Md3TypeStyle;
  labelLarge: Md3TypeStyle;
  labelMedium: Md3TypeStyle;
  labelSmall: Md3TypeStyle;
}

export interface Md3ShapeScale {
  cornerNone: number;
  cornerExtraSmall: number;
  cornerSmall: number;
  cornerMedium: number;
  cornerLarge: number;
  cornerExtraLarge: number;
  cornerFull: number;
}

export interface Md3SpacingScale {
  // Use 4dp/px step; keys are scale steps, not raw pixels.
  0: number;
  1: number;
  2: number;
  3: number;
  4: number;
  5: number;
  6: number;
  7: number;
  8: number;
  9: number;
  10: number;
  11: number;
  12: number;
  13: number;
  14: number;
}

export interface Md3ElevationTokens {
  // Use tonal elevation (surface roles) for most depth; shadows only where needed.
  level0: number;
  level1: number;
  level2: number;
  level3: number;
  level4: number;
  level5: number;
}

export interface Md3MotionTokens {
  durationMs: {
    short1: number;
    short2: number;
    short3: number;
    medium1: number;
    medium2: number;
    long1: number;
    long2: number;
  };
  easing: {
    standard: string;
    standardDecelerate: string;
    standardAccelerate: string;
    emphasized: string;
    emphasizedDecelerate: string;
    emphasizedAccelerate: string;
  };
  // Optional: physics-based motion tokens (Expressive). Map to platform primitives.
  spring?: {
    spatial: Md3SpringToken;
    effects: Md3SpringToken;
  };
}

export interface Md3SpringToken {
  // Keep these as tokens; implementation is platform-specific.
  mass: number;
  stiffness: number;
  damping: number;
  initialVelocity: number;
}

export interface Md3IllustrationTokens {
  styleFamily: string;
  strokeStyle: "none" | "thin" | "medium" | "thick";
  cornerStyle: "sharp" | "rounded" | "organic";
  textureLevel: "flat" | "subtle" | "expressive";
  accentUsage: "minimal" | "balanced" | "bold";
}

export interface Material3ThemeContract {
  mode: Md3Mode;
  color: Md3ColorScheme & SemanticStatus;
  type: Md3TypeScale;
  shape: Md3ShapeScale;
  space: Md3SpacingScale;
  elevation: Md3ElevationTokens;
  motion: Md3MotionTokens;
  illustration: Md3IllustrationTokens;
}
```

## 2) Rails/Phlex token delivery contract

- Store shared token values in a single source file (for example `config/design_tokens.yml` or equivalent).
- Emit tokens as CSS custom properties in `app/assets/stylesheets/tokens.css`.
- Consume token aliases in Phlex component styles; avoid per-component raw values.
- Keep Stimulus behavior styling-aware through semantic data attributes and state classes, not color literals.
- Ensure Hotwire Native WebViews render the same token CSS as browser surfaces.

## 3) Light/dark mapping rules

- Define **two explicit schemes**: `light` and `dark`. Do not “invert”; recompose surfaces.
- In dark mode, keep depth primarily via **tonal elevation** (surface containers) rather than stacking shadows.
- Use the M3 surface model consistently:
  - Backgrounds: `surfaceDim`/`surfaceBright` (or `background` for app canvas)
  - Content surfaces: `surface`, then `surfaceContainer*` for grouping
  - Overlays (menus/dialogs): `surfaceContainerHigh` → `surfaceContainerHighest` + scrim

## 4) Dynamic color (use static fallback)

- If the platform supports dynamic color (e.g., Android 12+), allow `light/dark` schemes to be generated from system colors.
- Otherwise, generate a static M3 scheme from a **seed color** (brand primary) and store as tokens.
- Treat dynamic color as an optional input; never block implementation on it.

## 5) Semantic statuses (success/warning/info) + contrast rules

Material defines `error` roles. Add `success/warning/info` as semantic extensions:

- Always define `X`, `onX`, `XContainer`, `onXContainer`.
- Text/icon on any container must meet your contrast target (default: WCAG AA).
- Don’t rely on hue alone: pair semantic color with label/icon/shape where meaning is important.

Contrast constraints (defaults):

- Text/icon: target ≥ 4.5:1 for normal text; ≥ 3:1 for large text.
- Non-text affordances (outlines, focus rings, icons that convey meaning): target ≥ 3:1.
