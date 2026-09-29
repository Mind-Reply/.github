# Mind-Reply GitHub Compliance Baseline

Status: ACTIVE POLICY BASELINE
Owner: repository maintainers
Scope: repositories in the Mind-Reply organization that adopt this baseline.

## Control objectives

1. Protect source integrity.
2. Minimize credential and workflow privileges.
3. Require reproducible verification before promotion.
4. Preserve auditability and rollback.
5. Separate repository evidence from live-runtime evidence.
6. Prevent accidental destructive or production changes.

## Mandatory controls for adopting repositories

- Protected default branch through GitHub rulesets/branch protection.
- Pull request review for protected changes.
- Required CI/security checks before production merge.
- Least-privilege GitHub Actions permissions.
- Secrets only through GitHub/provider secret stores.
- No production credentials in source or workflow logs.
- Dependency/security scanning where supported.
- CODEOWNERS review for security/control paths.
- Third-party Actions pinned to immutable references where practical.
- Deployment credentials scoped to the target environment.
- Production deployment must emit commit, workflow, artifact and environment evidence.
- Live status must be independently verified after deployment.

## High-risk changes

Treat credential, billing, DNS, repository/organization permissions, production rollback, deletion, security-policy and database/schema changes as controlled changes requiring explicit authorization and evidence.

## Evidence vocabulary

VERIFIED = fresh direct evidence.
READY = controls satisfied but live proof may remain separate.
BLOCKED = explicit dependency prevents progression.
FAILED = required control or operation failed.
UNVERIFIED = evidence missing/stale/inaccessible.
ARCHIVED = intentionally inactive.
MIGRATION = transitional state.

## Enforcement boundary

This document is policy-as-code documentation. GitHub account/org settings such as branch rulesets, secret-scanning configuration, Actions policy and required reviewers must also be configured in GitHub settings. A repository file alone does not prove those settings are enabled.

