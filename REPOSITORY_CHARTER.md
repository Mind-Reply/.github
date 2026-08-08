# Mind-Reply organization repository charter

This organization is a portfolio, not a single product with the same name repeated everywhere.

## Naming direction

Repository names may remain stable for history and integrations, while the product identity inside each repository should be purposeful and distinct.

| Repository | Working identity | Purpose |
|---|---|---|
| `mind-reply-core` | **Northstar Fabric** | shared product/runtime foundation |
| `mindreply` | **MindReply Production** | production automation and operating source |
| `control-plane` | **Orbit Desk** | private owner/operator control surface |
| `replycontrol` | **Signal Desk** | communication/reply product surface |
| `a11k-engine-private` | **A11K Engine** | private reasoning/orchestration engine |
| `mr-touch` | **Touchline** | human interaction layer |
| `mrteam` | **Crewline** | team/work orchestration |
| `n8n-workflows-private` | **Loomline** | workflow fabric |
| `mindreply-brands` | **Brand Atlas** | brand system and reusable identity assets |
| `whatsapp-ai-router` | **Message Relay** | private messaging routing |
| `Aurel` | **Aurel** | independent product/brand |

These identities are deliberately different. A repository should earn its own vocabulary from its actual job.

## Operating principles

1. Human outcome before automation novelty.
2. Evidence before claims.
3. Reversible changes before sweeping rewrites.
4. One source of truth per responsibility.
5. Experimental work stays isolated until proven.
6. Archived repositories are historical records, not active dependencies.
7. Every automated change must be attributable, reviewable, and easy to undo.

## Stewardship

Active product repositories should carry the hourly `Repository Steward` workflow and `AGENTS.md` contract. The steward is intentionally conservative: it observes continuously and only performs low-risk automated actions. Product, billing, authentication, permissions, production infrastructure, and destructive changes require explicit review.
