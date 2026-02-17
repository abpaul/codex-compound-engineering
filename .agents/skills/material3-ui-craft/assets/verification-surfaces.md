# Verification Surfaces (required)

Premium UI work fails without a fast visual evidence loop. Require deterministic proof surfaces for every component and shell.

## Web: Rails preview surface per component set

For every component family, include a preview surface rendered by Rails + Phlex:

1. Preferred: dedicated preview route (for example `/ui/previews/buttons`), or
2. Fallback: internal demo page under authenticated dev tooling.

Each preview surface must show:

- Variants (filled/tonal/outlined/text/elevated where applicable)
- States: default, hover, pressed, focus-visible, disabled (+ loading/error when relevant)
- Light + dark themes
- Long text, icon+text, icon-only (when applicable)
- Density presets used by the product

## Native shells: Hotwire Native verification route

Maintain a route rendered by the same Rails/Phlex components that can be opened from iOS and Android Hotwire Native shells.

Required checks:

- Same token contract as web (no shell-specific color drift)
- Navigation transitions are Turbo-compatible in WebView
- Form and feedback states remain usable in WebView controls
- At least one long-label/i18n stress case

## Screenshot matrix (minimum)

Capture and keep screenshots for:

- Desktop browser (light + dark)
- Mobile browser viewport (light + dark)
- iOS Hotwire Native shell WebView (light + dark)
- Android Hotwire Native shell WebView (light + dark)

Rules:

- Use deterministic test data and fixed viewport presets.
- Store screenshots in a predictable path and date-stamp them.
- Avoid visual assertions on pages with random/clock-dependent content unless stabilized.
