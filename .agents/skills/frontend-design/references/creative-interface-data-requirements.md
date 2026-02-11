# Creative Interface Data Requirements

This note defines the minimum data an LLM needs to reliably create high-quality, distinctive UI.

## 1) Product and User Intent

- Product domain and use case
- Primary user persona
- Primary task/outcome per screen

Why: Visual hierarchy and interaction priorities depend on user intent.

## 2) Brand and Visual Positioning

- Brand adjectives (3-5)
- Brand constraints (colors, logos, forbidden styles)
- Voice/tone alignment

Why: Without this, outputs drift to generic "AI average" aesthetics.

## 3) Surface Scope and Content Model

- Target routes/screens/components
- Required states (loading/empty/error/success)
- Content density preference (spacious vs dense)

Why: Composition and spacing decisions are content-driven.

## 4) Palette Constraints and Accessibility Target

- Required/forbidden colors
- Light/dark mode policy
- Accessibility target (default WCAG AA)

Why: Color decisions must be both distinctive and compliant.

## 5) Typography Constraints

- Allowed typefaces or licensing constraints
- Reading context (dashboard, editorial, form-heavy, mobile-first)

Why: Typography establishes personality and readability.

## 6) Reference Signals

- 2-5 examples to emulate
- 1-2 anti-examples to avoid

Why: Positive and negative references anchor style and prevent mismatch.

## 7) Motion and Interaction Policy

- Motion intensity preference
- Reduced-motion handling
- Interaction feedback expectations

Why: Motion shapes perceived quality and accessibility.

## 8) Technical and Delivery Constraints

- Framework and component system
- Performance constraints
- Browser/device support

Why: Feasible design direction depends on implementation boundaries.
