# Repository Registry

Status: ACTIVE
Owner: Mind-Reply / A11-K / angellllkr-eng
Policy: one functionally distinct product or system = one canonical repository.

## Canonical operating set

### Mind-Reply organization

| Repository | Role | Disposition |
|---|---|---|
| `Mind-Reply/mindreply-app` | MindReply production/application root | CANONICAL |
| `Mind-Reply/mind-reply-core` | MindReply core/runtime | REVIEW — overlaps personal `mind-reply-core` |
| `Mind-Reply/mind-reply-app` | MindReply app | REVIEW — inspect before consolidation |
| `Mind-Reply/control-plane` | Operational control plane | CANONICAL CANDIDATE |
| `Mind-Reply/replycontrol` | Reply control application | ACTIVE CANDIDATE |
| `Mind-Reply/whatsapp-ai-router` | WhatsApp routing product | CANONICAL CANDIDATE |
| `Mind-Reply/resellerpro` | ResellerPro product | CANONICAL CANDIDATE |
| `Mind-Reply/aether-x` | Aether-X | CANONICAL |
| `Mind-Reply/kratos-s` | Kratos-S | CANONICAL |
| `Mind-Reply/tapcraft` | TapCraft | CANONICAL |
| `Mind-Reply/routeforge` | RouteForge | CANONICAL |
| `Mind-Reply/am-service-ads-engine` | AM Service ads engine | CANONICAL CANDIDATE |
| `Mind-Reply/Aurel` | Aurel | CANONICAL CANDIDATE |
| `Mind-Reply/A11-K` | Public A11-K surface | CANONICAL |
| `Mind-Reply/angellllkr-eng.github.io` | Public hub | CANONICAL |
| `Mind-Reply/mindreply-app-docs` | Documentation | CANONICAL |
| `Mind-Reply/mindreply-app-brands` | Brand registry/assets | REVIEW |
| `Mind-Reply/own-core` | Shared templates/security guidance | CANONICAL CANDIDATE |

### A11-K organization

| Repository | Role | Disposition |
|---|---|---|
| `A11-K/a11k-core` | A11-K core | CANONICAL CANDIDATE |
| `A11-K/a11k-command` | A11-K command surface | CANONICAL CANDIDATE |
| `A11-K/a11k-ops` | Operations | CANONICAL CANDIDATE |
| `A11-K/a11k-vision` | Vision/product surface | CANONICAL CANDIDATE |
| `A11-K/a11k-achieve` | Achievement/product surface | CANONICAL CANDIDATE |
| `A11-K/a11k-spaces` | Public spaces | CANONICAL CANDIDATE |
| `A11-K/build-bot-buddy` | Build automation | CANONICAL CANDIDATE |

### Personal account

| Repository | Role | Disposition |
|---|---|---|
| `angellllkr-eng/mind-reply-core` | Legacy/canonical-history MindReply core | REVIEW — overlaps org core |
| `angellllkr-eng/mindreply` | Legacy MindReply bundle | LEGACY — preserve history, do not deploy |
| `angellllkr-eng/mindreply-control` | Legacy control plane | REVIEW against org control-plane |
| `angellllkr-eng/mindreply-org-site` | Legacy/org site copy | REVIEW against org site |
| `angellllkr-eng/enterprise-engine-radar` | Governance intelligence | KEEP |
| `angellllkr-eng/patchtalk` | PATCH Talk | KEEP |
| `angellllkr-eng/personal-agent` | Personal agent | KEEP |
| `angellllkr-eng/brushworks` | Brushworks | KEEP |
| `angellllkr-eng/reseller-pro-enterprise` | ResellerPro enterprise implementation | REVIEW against org `resellerpro` |
| `angellllkr-eng/resellerpro-platform` | ResellerPro platform | REVIEW against org `resellerpro` |
| `angellllkr-eng/registrar-control-plane` | Registrar control | KEEP / domain infrastructure |
| `angellllkr-eng/agent-control-plane` | Agent control plane | KEEP / review with org control-plane |

## Known duplicate/copy families requiring content-level comparison

- MindReply: `Mind-Reply/mindreply-app`, `Mind-Reply/mind-reply-core`, `Mind-Reply/mind-reply-app`, `angellllkr-eng/mind-reply-core`, `angellllkr-eng/mindreply`
- MindReply sites: `Mind-Reply/mindreply-app-org-site` and `angellllkr-eng/mindreply-org-site`
- ResellerPro: `Mind-Reply/resellerpro`, `angellllkr-eng/resellerpro-platform`, `angellllkr-eng/reseller-pro-enterprise`
- Real estate: `Mind-Reply/real-estate-value-radar`, `Mind-Reply/copy-of-real-estate-value-radar`, `angellllkr-eng/real-estate-value-radar`
- MegaAgent: `Mind-Reply/megaagent-pc-builder`, `angellllkr-eng/megaagent-pc-builder`
- Compose: `Mind-Reply/compose-for-agent`, `Mind-Reply/compose-for-agents`
- Chatbot: `Mind-Reply/chatbot`, `angellllkr-eng/chatbot`, `angellllkr-eng/chatbot1`
- EVE: `angellllkr-eng/eve-chat-1`, `angellllkr-eng/eve-chat-template`
- AUREL: `Mind-Reply/Aurel`, `Mind-Reply/aurel-public`, `Mind-Reply/AUREL-brand`, `Mind-Reply/aurel-site-private`
- A11-K surfaces: `Mind-Reply/A11-K`, `angellllkr-eng/a11-k-multiverse`, `angellllkr-eng/a11-k-multiverse-5d`, and A11-K organization repositories

## Cleanup rules

1. Inspect contents before declaring a duplicate.
2. Never delete a repository solely because its name looks duplicated.
3. Select one canonical implementation; preserve required history by migration/merge where technically safe.
4. Mark legacy repositories clearly and stop deploying them.
5. Standardize default branch to `main` where supported by the repository workflow.
6. Never move secrets, private chats, credentials, payment data, or customer data into public repositories.
7. Verify deployments and repository consumers before any rename/transfer.
8. Keep personal repositories for personal work; production organization repositories belong under the owning organization.

## Current execution boundary

The connected GitHub surface permits repository inspection and content/branch/PR operations, but does not expose repository rename, transfer, or deletion administration. Those destructive ownership/name operations therefore remain untouched until an administrative GitHub connection exposes them.
