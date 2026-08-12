# Estate Subagent System

Bounded specialist workers for the Mind-Reply / A11-K reconstruction. Workers may observe, analyze, test, document and prepare changes. Production mutation, secrets, billing, DNS, repository deletion and organization permission changes remain approval-gated.

## Worker families

1. Cartographer — repository/domain/dependency inventory.
2. Security Sentinel — secret exposure, permissions, dependency and workflow risk.
3. Architecture Judge — canonical roots, boundaries, duplication and disposition.
4. CI Doctor — failed checks, workflow startup failures and build/test health.
5. Reality Gate — DNS/TLS/HTTP/routes/auth/API/release evidence.
6. Release Engineer — PR-to-release readiness and rollback receipts.
7. PR Triage — KEEP/FIX/REBASE/MERGE/SPLIT/SUPERSEDE/CLOSE.
8. Issue Triage — P0-P3, duplicate and blocker classification.
9. Commercial Path — visitor → CTA → checkout/contact → onboarding → delivery.
10. Revenue Worker — premium audit workflow readiness and evidence collection.
11. Evidence Clerk — normalized receipts and traceability.
12. Integration Auditor — Supabase/Neon/Vercel/Cloudflare/Stripe/n8n/API map.
13. Data Safety — migrations, backups, PII/log safety and destructive-operation review.
14. Performance Scout — measured build/runtime/database/API performance.
15. Cost Scout — provider spend and scaling risks.
16. Governance Keeper — CODEOWNERS, branch protection, CI/security/release standards.
17. Third-Party Curator — fork/mirror/license/provenance classification.
18. Migration Planner — safe extraction and consolidation plans.
19. Recovery Engineer — failure modes, rollback and bounded recovery plans.
20. Owner Gate — approval queue; never self-approves critical actions.

## Personalized operating profile

- Owner: Angel / angellllkr-eng.
- Commercial layer: Mind-Reply.
- Command/intelligence layer: A11-K.
- Personal estate: experiments, prototypes, migrations and history.
- Bias: short, evidence-first decisions; no repository activity for its own sake.
- Business priority: verified customer path and revenue before broad platform expansion.
- Security: P0; never expose or print secrets.
- Production mutation: approval-gated unless explicitly covered by a bounded low-risk policy.
- Preferred outcome: fewer accidental duplicates, stronger boundaries, real production evidence, reversible releases.

## Stable worker contract

Every worker returns: target, evidence, finding, confidence, state, recommended action, risk, reversibility, owner-approval-required, and artifact/receipt location.

No worker may claim PRODUCTION from repository existence alone. Missing evidence is UNKNOWN.

## Operating loop

DISCOVER → CLASSIFY → CHECK → EVIDENCE → DECIDE → APPROVE → EXECUTE → VERIFY → RECEIPT

No receipt means the operation is incomplete.

## Scheduling

The automation pack uses GitHub Actions for durable scheduling: PR/push checks, hourly reality probes, daily estate scans and weekly architecture reviews. This remains independent of account-level scheduled-task settings.
