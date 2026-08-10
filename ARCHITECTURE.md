# Mind-Reply Architecture Baseline

Status: reconstruction baseline, 2026-08-10.

## Boundaries

Mind-Reply is the commercial/product layer: customer applications, product websites, billing, integrations, delivery and business workflows.

A11-K is the private command/intelligence layer: observation, planning, approvals, evidence, orchestration and recovery.

The personal GitHub account is a development estate: experiments, prototypes, migrations and historical sources. Commercial canonical code should not remain there indefinitely.

## Evidence rule

A repository, deployment configuration, README, domain claim or historical status file is not proof of production health.

Production state is established only by an explicit verification receipt containing at minimum:

- target
- checked_at
- source
- release/commit when available
- observed result
- state

Allowed states include PLANNED, IMPLEMENTED, BUILT, PREVIEW, VERIFIED, PRODUCTION, DEGRADED, DOWN, BLOCKED, STALE, UNKNOWN and RECOVERING.

## Integration boundary

Mind-Reply may emit signed commands/events to A11-K. A11-K may return decisions, evidence, approvals or recovery instructions. A11-K must not receive uncontrolled production mutation authority.

Sensitive operations require authorization, an audit/correlation identifier, idempotency where applicable, verification and a rollback path.

## Repository disposition

Every active repository must have one purpose and one disposition: CANONICAL, ACTIVE PRODUCT, ACTIVE INFRASTRUCTURE, ACTIVE COMPONENT, REFERENCE, EXPERIMENT, MIGRATE, CONSOLIDATE, SUPERSEDE, ARCHIVE, FREEZE or UNKNOWN.

Unknown purpose blocks further expansion until the repository is understood.

## Naming

Repository names are implementation identifiers, not automatically product names. Brand, product, application, service, package, infrastructure and experiment boundaries must remain explicit.
