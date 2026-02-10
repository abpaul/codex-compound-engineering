# Vanilla CSS Patterns (37signals/Basecamp)

This note captures practical patterns taken from 37signals writing and codebases.

## High-Signal Patterns

1. Keep CSS no-build where possible.
   - Campfire and Fizzy use Rails + Propshaft + many plain `.css` files.
   - No Node CSS pipeline is required to use modern features.
2. Separate raw color tokens from semantic tokens.
   - Define raw `--lch-*` values first.
   - Expose app-level `--color-*` aliases derived via `oklch(...)`.
3. Prefer explicit cascade structure.
   - Fizzy declares a layer contract up front:
   - `@layer reset, base, components, modules, utilities, native, platform;`
4. Use modern selectors to reduce JS and markup complexity.
   - Heavy use of `:has`, `:where`, and `:is` in both codebases.
5. Use adaptive media queries by capability, not only width.
   - `any-hover`, `prefers-color-scheme`, `prefers-reduced-motion`, `display-mode`.
6. Use `color-mix` and `oklch` for consistent derived colors.
   - Component tones and hover/selection states are computed, not hardcoded.
7. Use progressive-enhancement animation features.
   - Examples include `@starting-style` and view transitions for supported browsers.

## Source URLs

- https://www.zolkos.com/2025/12/03/vanilla-css-is-all-you-need
- https://dev.37signals.com/modern-css-patterns-and-techniques-in-campfire/
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/colors.css
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/base.css
- https://github.com/basecamp/once-campfire/blob/main/app/assets/stylesheets/nav.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/_global.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/base.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/cards.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/lightbox.css
- https://github.com/basecamp/fizzy/blob/main/app/assets/stylesheets/bar.css
