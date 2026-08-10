# Release Baseline

Preferred release lifecycle:

CHANGE
→ PR
→ static analysis
→ typecheck
→ unit/integration tests
→ build
→ security/secret scan
→ preview
→ Reality Gate
→ functional QA
→ owner approval when required
→ production
→ post-deploy probe
→ release receipt

## Release receipt

Each production release should record:

- release_id
- repository
- commit SHA or immutable artifact
- environment
- timestamp
- actor
- checks and results
- verification result
- rollback target

## Promotion rule

A failed critical check blocks promotion. A missing probe is UNKNOWN. Production status must never be derived from repository labels or deployment intent.

## Rollback

Rollback must identify a known-good immutable target and include post-rollback verification. Destructive or irreversible changes require explicit authorization and a recovery plan before execution.
