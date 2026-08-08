# Mind-Reply Operating Charter

## Purpose
Build human-first software systems that are useful, legible, reversible, accessible, and commercially durable.

## Separation model
- **Public**: products, documentation, demos, community-safe source.
- **Private**: infrastructure, credentials, customer data, internal operations.
- **Personal**: owner-only systems, personal workflows, private notes and decisions.
- **Growth**: experiments for learning, creativity, craft, and capability building.

No repository may silently cross these boundaries. A cross-boundary integration needs an explicit contract.

## Product language
Do not copy generic SaaS/agent vocabulary across every product. Each product gets its own small dictionary derived from its job. Plain-language meaning must remain visible beside any branded term.

## Human-first interaction rules
1. Show what changed, not that something happened.
2. Give people a safe exit before consequential actions.
3. Prefer one clear next action over a dashboard full of equal-weight controls.
4. Never manufacture confidence. Surface uncertainty and provenance.
5. Accessibility is a product requirement, not a compliance afterthought.
6. Automation must be observable, pausable, replayable, and attributable.
7. Agents may propose; permissions and policies decide what may execute.

## Automation fabric
Use event-driven automation where appropriate. n8n, webhooks, queues, vector retrieval, scheduled jobs, and external automation services are adapters—not the product identity. Every automation needs an owner, trigger, scope, retry policy, audit trail, kill switch, and recovery path.

## Hourly stewardship
Hourly automation may inspect health, stale work, failed deployments, expiring credentials, accessibility regressions, broken links, queue backlogs, and release state. It must not silently perform high-impact production changes without an approved policy.

## Agent architecture
Agents are role-bound workers, not unrestricted superusers. Every agent has: mission, tools, allowed data, prohibited actions, escalation path, evidence requirements, budget, and audit identity.

## Definition of done
A release is not complete until behavior, accessibility, security, observability, rollback, documentation, ownership, and public/private boundaries are checked.
