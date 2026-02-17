# PRD Setup Interview Question Bank

Use these questions in order. Ask one at a time.
If the user cannot answer, mark as open question with owner and date.

## 1) Product Context and Outcomes

- What problem are we solving, and why now?
- What does success look like in 3 months and 12 months?
- What is in scope for this phase?
- What is explicitly out of scope (non-goals)?

## 2) Users and Jobs-to-be-Done

- Who are the primary users? Who are secondary users?
- What core job is each user trying to complete?
- What pain points exist in the current workflow?
- Which user segment gets priority if tradeoffs are needed?

## 3) Requirements and User Flows

- What are the top 3 user journeys we must support?
- What are the must-have functional requirements?
- What edge cases and failure states matter most?
- What permissions or role boundaries exist?

## 4) Architecture Baseline Confirmation

- Should we follow the default Rails server-rendered architecture?
- Are we committing to Phlex for reusable UI components?
- Are we committing to Stimulus for client-side behavior?
- Are Turbo/Hotwire Native required for navigation and mobile WebView integration?
- If any answer is no, who is approving the deviation and why?

## 5) UX, Branding, and Token Direction

- What product principles should guide design decisions?
- What custom color palette direction should the product own?
- What typography constraints or preferences must we follow?
- What illustration style should we define?
- What accessibility level is required (WCAG target, keyboard support, contrast)?

## 6) Technical and Operational Constraints

- What stack constraints are fixed beyond the architecture baseline?
- What integration dependencies are required?
- What security, privacy, or compliance requirements apply?
- What performance or reliability targets are non-negotiable?

## 7) Delivery, Metrics, and Risks

- What milestones and target dates should we plan around?
- What leading and lagging metrics define success?
- What are the top risks and mitigation ideas?
- What rollout strategy is expected (phased, flag-based, beta, hard cutover)?

## 8) README and Team Operating Needs

- Who is the README for (new devs, operators, contributors)?
- What setup commands must always work?
- What test/lint commands are required before merge?
- What deployment and troubleshooting details are essential?
