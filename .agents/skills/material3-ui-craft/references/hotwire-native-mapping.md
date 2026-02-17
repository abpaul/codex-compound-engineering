# Mapping Turbo + Hotwire Native to the tokenized UI system

Use the same Rails routes and Phlex components for browser and native shell rendering. Native shells should consume server-rendered HTML via Hotwire Native WebViews without visual or interaction drift.

## Navigation and routing

- Prefer Turbo Drive navigation and Turbo Frame partial updates.
- Keep canonical route structure shared between browser and native shells.
- Use server-rendered navigation affordances first; layer native-specific hooks only when required.

## Interaction behavior

- Keep interactive UI behavior in Stimulus controllers.
- Ensure controller actions work without relying on browser-only APIs unavailable in WebView contexts.
- Test key interactions (`form submit`, `validation`, `toasts`, `dialogs`, `menus`) in web + native shells.

## State and styling parity

- Load the same token stylesheet in browser and native shell sessions.
- Keep theme mode handling deterministic (server/session/device strategy documented).
- Correct shell drift through shared tokens/components, not shell-specific visual forks.

## Verification checklist

- Turbo navigation transitions behave correctly in iOS and Android shells.
- Focus handling and accessible names are preserved.
- Motion respects reduced-motion settings where available.
- Screenshot evidence exists for browser + native shell matrix before handoff.
