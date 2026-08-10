# Operations Baseline

## Reality Gate

A production claim must be verified, not inferred. The reusable gate should check, where applicable:

- DNS resolution
- TLS
- canonical URL and redirects
- HTTP availability
- expected critical routes
- authentication boundary
- API health
- deployment commit/release
- critical CTA/customer journey
- checkout or payment state
- observable error signals

Missing evidence is UNKNOWN, never HEALTHY.

## Failure handling

Critical dependencies need explicit timeout, retry/backoff, fallback or degraded state, operator visibility and recovery behavior. Never return a success state when the dependency did not confirm success.

## Evidence record

Important operations should emit a safe record with operation id, target, actor, timestamps, inputs hash where appropriate, result, state, artifacts and next action. Do not put credentials or unnecessary personal data into evidence.

## Owner action classes

READ: safe observation.

LOW: bounded reversible automation.

MEDIUM: automation may require approval based on target and environment.

HIGH: explicit owner approval.

CRITICAL: explicit approval plus verification and rollback capability.

## Recovery

A production mutation is incomplete until post-change verification succeeds. Failed verification must enter a visible BLOCKED, DEGRADED or RECOVERING state and expose a rollback target when one exists.
