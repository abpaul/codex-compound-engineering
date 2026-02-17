# Design Guidelines

## 1. Purpose

- Product context:
- Design goals:
- Primary UX outcomes:

## 2. Architecture Baseline

- Rendering model: Rails server-rendered HTML
- Component model: Phlex for all reusable UI components
- Client behavior model: Stimulus controllers
- Navigation/update model: Turbo Drive/Frames/Streams
- Native shell model: Hotwire Native WebView integration
- Approved deviations (if any):

## 3. Design Principles

- Principle 1:
- Principle 2:
- Principle 3:

## 4. Token System (MD3-inspired, brand-owned)

- Custom brand palette direction:
- Custom typography direction:
- Custom illustration direction:
- Color role tokens (primary/surface/outline/status):
- Type scale role tokens (display/headline/title/body/label):
- Spacing scale tokens:
- Elevation roles and usage:
- Motion tokens (duration/easing) and reduced-motion fallback:

## 5. Component Anatomy + APIs

- Required Phlex component inventory:
- MD3 anatomy mapping per component (container/content/outline/state layer/icon/supporting text):
- Component API conventions (`variant`, `tone`, `size`, `state`):
- Prohibited patterns (ad-hoc styling, raw values, per-screen forks):

## 6. Information Architecture + Navigation

- Primary navigation model:
- Key screens/views:
- Turbo Frame/Stream usage rules:
- Hotwire Native navigation integration rules:

## 7. Accessibility + Interaction Standards

- Keyboard navigation:
- Focus visibility:
- Screen-reader expectations:
- Contrast requirements:
- State coverage (default/hover/pressed/focus/disabled/loading/error):

## 8. Responsive + Cross-Shell Behavior

- Breakpoints:
- Reflow rules:
- Touch target minimums:
- Browser vs native shell behavior differences (if any):

## 9. Screenshot-Driven Polish Process

- Verification surfaces/routes:
- Screenshot matrix (desktop/mobile/iOS shell/Android shell):
- Rubric threshold target:
- Iteration stop rule:

## 10. QA Checklist

- [ ] Rails/Phlex/Stimulus/Turbo baseline followed (or deviation approved)
- [ ] Token system defined for color/type/spacing/elevation/motion
- [ ] Custom palette, typography, and illustration style documented
- [ ] No ad-hoc styling in components/views
- [ ] Component states implemented and documented
- [ ] Contrast and keyboard path pass target
- [ ] Screenshot polish evidence captured for required shells
