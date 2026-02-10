# React Native (Expo) Style Guide

## TypeScript and State

- Keep TypeScript strict; avoid `any`.
- Use `unknown` at boundaries and narrow with guards/schemas.
- Use Zustand for app state and keep stores focused by domain.

## Performance

- Use `FlatList` for long lists (10+ rows) with stable keys.
- Memoize expensive selectors and callbacks for hot render paths.
- Avoid unnecessary rerenders by splitting large components.

## Styling

- Prefer NativeWind utility classes for static styling.
- Avoid inline style objects for reusable component styles.
- Keep spacing, color, and typography tokens consistent.

## Platform and UX

- Respect iOS/Android platform conventions where behavior differs.
- Handle loading, empty, and error states for all network-driven screens.
- Use optimistic updates only when rollback behavior is defined.

## Data and Secrets

- Use SecureStore for credentials/tokens.
- Do not store secrets in plain storage or source files.
- Validate API payloads before trusting shape assumptions in UI.
