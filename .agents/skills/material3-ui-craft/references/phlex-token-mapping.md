# Mapping the theme contract to Rails + Phlex

Use Rails + Phlex as the implementation layer while keeping `assets/theme-contract.md` as the source of truth.

## Token delivery pattern

1. Keep canonical tokens in one shared source (`config/design_tokens.yml`, JSON, or Ruby constants).
2. Compile/export tokens to CSS custom properties in `app/assets/stylesheets/tokens.css`.
3. Reference semantic aliases inside component CSS (`--color-primary`, `--type-title-medium-size`) that map to MD3 role tokens.
4. Avoid component-local token forks unless a new shared role is introduced.

## Phlex component mapping

- Build reusable components under `app/components/ui/*`.
- Expose semantic API options (`variant`, `tone`, `size`, `state`) rather than free-form style props.
- Render predictable anatomy slot classes (`ui-button__container`, `ui-button__icon`, etc.).
- Keep accessibility attributes explicit (`aria-*`, `disabled`, `role`, `aria-live` where needed).

## Stimulus coordination

- Attach behavior using `data-controller`, `data-action`, and semantic `data-state` attributes.
- Keep visual state transitions token-driven via classes/attributes.
- Do not mutate inline styles from Stimulus controllers except for unavoidable measured layout operations.

## Guardrails

- No raw hex values or arbitrary spacing literals in Phlex output.
- No per-page class overrides that bypass the component token contract.
- Changes from screenshot polish loops should update shared tokens or component maps first.
