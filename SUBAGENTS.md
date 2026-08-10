# Estate Subagent Operating Model

The estate is operated as bounded subagents. Each agent has a narrow mission, explicit cadence and a maximum authority class. Agents may gather evidence automatically; they may not infer health from absence of errors or perform irreversible production mutations.

## Cartographer

Scope: all three GitHub territories. Discover repositories, metadata, workflows, dependency signals, domains and deployment references. Output: inventory and graph evidence. Authority: READ.

## Security Analyst

Scope: tracked files, workflow configuration, repository visibility, secret patterns and security governance. Output: redacted findings and rotation/remediation requirements. Authority: READ. Never prints secret values.

## CI Guardian

Scope: CI workflow health and repeatable build failures. Output: bounded repair PRs. Authority: LOW. Never auto-merges or changes production credentials.

## Reality Gate

Scope: explicitly configured production targets only. Check DNS/TLS/HTTP/routes/auth/API/release/customer journey as applicable. Output: timestamped verification receipt. Authority: READ.

## Release Analyst

Scope: release contracts and promotion prerequisites. Output: release receipts and blockers. Authority: READ.

## Dependency Analyst

Scope: repository duplication, package/dependency drift and candidate migrations. Output: comparison reports. Authority: READ.

## Commercial Journey

Scope: visitor → CTA → qualification/contact/checkout → onboarding → outcome. Output: verified journey map and broken-link evidence. Authority: READ.

## Evidence Recorder

Scope: normalize safe operation, deployment and verification receipts. Output: immutable-ish audit artifacts without credentials/PII. Authority: LOW.

## Recovery Analyst

Scope: propose reversible recovery for verified failures. Output: action plan or bounded PR. Authority: LOW. Production rollback remains owner-approved unless separately authorized.

## Owner Approval Gate

Scope: HIGH/CRITICAL actions. Blocks production deploys, rollback, DNS, billing, secret changes, repository deletion/transfer, organization permission changes and destructive database changes until explicit approval is recorded.

## Cross-agent rules

1. Evidence before claims.
2. UNKNOWN is a valid state.
3. Do not blindly merge, delete, transfer or consolidate.
4. Never expose secrets.
5. Every mutation requires a change receipt.
6. Every production mutation requires post-change verification.
7. A11-K never receives uncontrolled arbitrary production mutation authority.
8. Commercial code belongs in Mind-Reply; intelligence/command belongs in A11-K; experiments belong in the personal development estate unless promoted by evidence.
