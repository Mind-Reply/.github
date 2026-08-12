# Autonomous Engineering Matrix

These are bounded GitHub Actions roles, not unrestricted agents.

| Role | Trigger | Scope | Can mutate? | Exit evidence |
|---|---|---|---|---|
| Cartographer | scheduled/manual | repository metadata, dependency/config inventory | No | inventory artifact |
| Sentinel | push/PR/schedule | secret-file guard, dependency audit, security checks | No | security result |
| Builder | PR/push | install, lint, typecheck, test, build | No | CI result |
| Reality Gate | preview/manual/schedule | DNS/TLS/HTTP/routes/health | No | VERIFIED/BLOCKED |
| Release Steward | release/manual | promotion orchestration | Only protected env | release receipt |
| Recovery Watch | schedule/failure | detect degraded state and open/route incident | Issue/comment only by default | incident receipt |
| Evidence Clerk | workflow completion | normalize run metadata and receipts | Artifact/issue only | receipt |
| Commercial Journey | schedule/manual | visitor→CTA→checkout/contact journey | No | journey result |

## Hard boundary

Automation can observe, test, report and prepare reversible changes. Production mutations, secrets, billing, DNS, destructive data operations, repository deletion and organization changes require explicit authorization or a separately approved protected-environment policy.

## Failure policy

No automation may convert UNKNOWN into HEALTHY. Missing evidence is UNKNOWN. Failed critical checks produce BLOCKED or DEGRADED and must remain visible.

## Subagent convention

Each bounded role should have one workflow, one clear input contract, one output/receipt contract and no implicit access to unrelated repositories. Cross-repository operations should use GitHub APIs with least privilege and immutable identifiers.
