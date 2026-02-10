---
name: vanilla-css
description: "Build maintainable, modern vanilla CSS (no framework required) using 37signals-style patterns. Use when implementing or refactoring styling without Tailwind/Sass/PostCSS pipelines."
---

# Vanilla CSS

Use this skill when the user wants CSS that is lightweight, expressive, and framework-free.
Prioritize native CSS features, strong token systems, and small component files.

## When To Use

- New UI work where a utility framework is not required
- Refactoring CSS that became over-coupled or toolchain-heavy
- Rails/Hotwire codebases using Propshaft or direct stylesheet loading
- Design updates where token clarity and predictable layering matter

## Core Principles

1. Use plain CSS first. Add build tooling only when a concrete blocker appears.
2. Organize cascade intentionally with `@layer` and small focused files.
3. Define raw tokens and semantic tokens with CSS variables at `:root`.
4. Use modern selectors (`:where`, `:is`, `:has`) to reduce markup churn and JS hooks.
5. Prefer progressive enhancement: advanced features should fail gracefully.
6. Keep specificity shallow; avoid `!important` unless unavoidable.

## Workflow

1. Audit the existing styling surface.
   - Identify entrypoints, token files, component files, and loading order.
   - Check whether a no-build path already exists.
2. Set or confirm cascade architecture.
   - Start with a layer contract such as:
     - `@layer reset, base, components, modules, utilities;`
   - Keep each major concern in separate files.
3. Build token foundations.
   - Define raw color values and semantic aliases.
   - Include mode/theme overrides (`prefers-color-scheme` or explicit theme attributes).
4. Implement components in isolation.
   - One file per component/domain.
   - Co-locate component variables and states.
5. Apply modern CSS where it improves clarity.
   - `:has` for parent-state styling.
   - `color-mix` for derived tints/shades.
   - `clamp` and container-aware units for responsive sizing.
   - `@starting-style` and view transitions only as enhancement.
6. Verify behavior and compatibility.
   - Keyboard focus, hover vs touch, reduced motion, light/dark modes.
   - Confirm selectors degrade safely when unsupported.
7. Report what changed.
   - File map, token changes, new selectors/features, and fallback strategy.

## Implementation Patterns

### 1) Layer Contract

```css
@layer reset, base, components, modules, utilities;
```

### 2) Token Model

```css
:root {
  /* Raw values */
  --lch-blue: 54% 0.23 255;
  --lch-gray: 96% 0.005 96;

  /* Semantic aliases */
  --color-link: oklch(var(--lch-blue));
  --color-border: oklch(var(--lch-gray));
}
```

### 3) Component Pattern

```css
@layer components {
  .card {
    --card-bg: color-mix(in srgb, var(--card-color) 8%, var(--color-canvas));
    background: var(--card-bg);
  }

  .card:has(.btn:hover) {
    --card-bg: color-mix(in srgb, var(--card-color) 14%, var(--color-canvas));
  }
}
```

### 4) Progressive Enhancement Guard

```css
@supports selector(:has(*)) {
  .toolbar:has([aria-expanded="true"]) {
    box-shadow: var(--shadow);
  }
}
```

## Guardrails

- Do not introduce Tailwind/Sass/PostCSS unless the user requests it or native CSS is insufficient.
- Keep class names domain-oriented (`.card__title`, `.nav__item`) rather than presentational.
- Prefer local component variables over repeating magic values.
- Keep transitions subtle and tied to interaction intent.
- Validate with actual UI states, not only static screenshots.

## Deliverables

- Updated CSS with explicit file/layer organization
- Clear token definitions and semantic usage
- Notes on progressive enhancement and browser-risk areas
- Verification summary for hover, focus, theme, and responsive states

## Source References

- https://www.zolkos.com/2025/12/03/vanilla-css-is-all-you-need
- https://dev.37signals.com/modern-css-patterns-and-techniques-in-campfire/
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/colors.css
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/base.css
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/nav.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/_global.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/base.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/cards.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/lightbox.css
