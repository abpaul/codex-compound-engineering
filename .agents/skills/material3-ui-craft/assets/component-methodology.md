# Phlex Component Methodology (MD3 anatomy)

Every reusable component must be implemented as a Phlex class and composed from the same MD3-inspired anatomy roles so state behavior, theming, and accessibility stay consistent across web and Hotwire Native shells.

## Required anatomy parts (every component)

Build these parts explicitly (even if visually minimal for one variant):

1. `container` - surface role, shape, tonal/shadow elevation
2. `content` - primary text content (typography + `on*` role)
3. `outline` - border/hairline using `outline` / `outlineVariant`
4. `stateLayer` - hover/press/focus feedback via tokenized overlays
5. `icon` - leading/trailing icon slots (size + color role)
6. `supportingText` - helper/error/supporting content (role + typography)

## Required states

At minimum:

- `default`
- `hover` (web)
- `pressed`
- `focus-visible` (keyboard)
- `disabled`

As needed:

- `selected` / `checked`
- `error`
- `loading`
- `dragged` (reorderable surfaces)

State implementation rules:

- Use tokenized state layers instead of component-specific state colors.
- Focus must be visibly indicated beyond subtle overlays.
- Disabled state preserves legibility and target sizing.
- Keep outlines stable across states unless the spec explicitly changes them.
- If using expressive motion/shape morph, keep it token-driven and respect reduced-motion preferences.

## Phlex API contract template

Expose semantic options only; never require consumers to pass raw styles.

```ruby
class UI::Button < Phlex::HTML
  def initialize(
    label:,
    variant: :filled,
    size: :md,
    leading_icon: nil,
    trailing_icon: nil,
    tone: :primary,
    disabled: false,
    loading: false,
    href: nil,
    data: {},
    **attrs
  )
    @label = label
    @variant = variant
    @size = size
    @leading_icon = leading_icon
    @trailing_icon = trailing_icon
    @tone = tone
    @disabled = disabled
    @loading = loading
    @href = href
    @data = data
    @attrs = attrs
  end
end
```

API guardrails:

- Accept semantic `variant`, `size`, and `tone` enums.
- Keep `class` override hooks controlled (append-only, never replace core token classes).
- Prefer explicit slots/options for icons/supporting text over string concatenation APIs.
- Encode behavior hooks with `data-controller`, `data-action`, and `data-*` values for Stimulus.

## Token mapping rules

- Component styles must resolve through shared token files (color/type/space/elevation/motion).
- No hardcoded hex values, pixel literals, or ad-hoc CSS variables in component-local files.
- Prefer role-based CSS variables (`--md-sys-color-primary`, `--md-sys-typescale-label-large-size`) mapped to product-owned semantic aliases.
- Any visual change discovered in polish loops should update token values or shared component maps first.

## Suggested file structure (Rails + Phlex)

```text
app/components/ui/button.rb
app/components/ui/button_preview.rb                 (optional local preview helper)
app/views/ui/previews/buttons/show.rb              (Phlex preview surface)
app/assets/stylesheets/tokens.css                  (global token contract)
app/assets/stylesheets/components/_button.css      (component slot classes only)
app/javascript/controllers/ui_button_controller.js  (Stimulus behavior)
test/components/ui/button_test.rb
```

## Interaction wiring rules

- Render semantic state attributes from Phlex (`data-state`, `aria-busy`, `disabled`, `aria-invalid`).
- Keep transient interactions in Stimulus controllers, not inline scripts.
- Use Turbo events (`turbo:submit-start`, `turbo:submit-end`, etc.) for async state transitions.
- Ensure components function in normal browser rendering and Hotwire Native WebView contexts.
