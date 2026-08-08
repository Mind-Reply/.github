# Mind-Reply Estate Constitution — 2026

## Purpose
Keep public products, private operations, personal systems, experiments, and customer data separate while allowing shared engineering standards.

## Estate classes
- PUBLIC: customer-facing products, documentation, brand surfaces, no secrets or private context.
- PRODUCT-PRIVATE: product source, integrations, customer-safe operational logic.
- OWNER-PRIVATE: A.K.-only control, personal context, approvals, credentials, financial/legal records.
- LAB: experiments and forks; never presented as production capability.
- ARCHIVE: preserved for provenance; no deployment authority.

## Non-negotiables
1. No claim of live, deployed, connected, certified, compliant, profitable, or monitored unless machine-verifiable evidence exists.
2. No secret, customer data, personal memory, or private-agent context crosses a boundary without explicit policy.
3. Every automated action has an owner, scope, risk class, audit record, rollback path, and observable result.
4. Production changes require tests, security checks, health evidence, and a rollback route.
5. A 404, broken CTA, dead webhook, stale integration, or misleading status is a release defect.

## Automation authority
- OBSERVE: read-only checks and evidence collection.
- RECOMMEND: create issues/PRs and proposed changes.
- EXECUTE-SAFE: reversible maintenance inside an approved repository.
- EXECUTE-SENSITIVE: billing, DNS, access, deletion, legal, or production-impacting actions require owner approval.

## Vocabulary rule
Each product owns its own nouns, metaphors, interaction names, and visual language. Shared infrastructure terms remain technical and are never forced into product copy.

## Evidence vocabulary
`observed` = directly checked; `derived` = calculated from observed evidence; `proposed` = not applied; `applied` = committed; `live` = externally verified; `unknown` = not checked.

## Long-term operating loop
observe → classify → propose → test → approve when required → apply → verify → record → learn.
