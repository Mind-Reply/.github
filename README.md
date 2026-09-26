# Mind-Reply GitHub Organization

This organization is the production source-of-truth for the Mind-Reply estate.

## Authority rule

**Organization = production authority.**  
**Personal profile = development, recovery, migration and provenance source unless a repository is explicitly designated otherwise in the estate registry.**

A product must have one active production repository. A personal copy must never become a second production root merely because its name is similar or its code is newer.

## Canonical production repositories

| Product / boundary | Production authority | Profile/source repositories |
|---|---|---|
| MindReply / A11pro product | `Mind-Reply/mindreply-app` | `angellllkr-eng/mindreply`, `angellllkr-eng/mindr`, `angellllkr-eng/mr`, `angellllkr-eng/mindreply-org-site` and other historical copies |
| A11-K product | `Mind-Reply/A11-K` | `angellllkr-eng/A11-K`, A11-K personal satellites |
| ResellerPro | `Mind-Reply/resellerpro` | `angellllkr-eng/resellerpro-platform`, `reseller-pro`, `reseller-pro-enterprise` |
| MindReply shared control module | `Mind-Reply/control-plane` | `angellllkr-eng/agent-control-plane` remains a private constitutional/evidence boundary; `angellllkr-eng/mindreply-control` is migration source |
| A11 RAG / evidence capabilities | `Mind-Reply/mindreply-app` capability destination | `angellllkr-eng/a11-rag-platform` |
| A11 cloud execution / evidence capabilities | `Mind-Reply/mindreply-app` capability destination | `angellllkr-eng/a11-live-cloud-execution` |
| PatchTalk | `angellllkr-eng/patchtalk` until an organization destination is created | `angellllkr-eng/patchtalk-ux` is design-only satellite |

## Naming policy

Do not create parallel names such as:

- `mind-reply` / `mindreply` / `mind-reply-core`
- `mindreply-app` / `mindreply-platform` / `mindreply-next`
- `resellerpro` / `resellerpro-platform` / `reseller-pro` / `reseller-pro-enterprise`
- `A11-K` in both org and profile as active products

The organization keeps the canonical production identity. Personal variants are labelled **SOURCE-FREEZE**, **MIGRATION**, **PROVENANCE**, or **EMPTY** as appropriate.

## Current consolidation state

### DONE
- Organization-level authority rule established.
- MindReply canonical repository established: `Mind-Reply/mindreply-app`.
- A11-K organization repository established as canonical product root.
- ResellerPro organization destination established and personal implementation source frozen.
- A11-K personal repository explicitly labelled migration source.
- PatchTalk UX explicitly labelled a design satellite.
- Misleading `angellllkr-eng/mind-reply-core` classified separately from MindReply based on its actual repository identity/history.
- Historical organization duplicates are already archived where GitHub state allows.

### IN PROGRESS
- Full ResellerPro implementation content transfer from `angellllkr-eng/resellerpro-platform` into `Mind-Reply/resellerpro`.
- Capability-level absorption of A11 RAG and cloud-execution source material into `Mind-Reply/mindreply-app`.
- Final retirement of redundant personal copies after useful work is reconciled.

### ADMINISTRATION PENDING
The current GitHub connector does not expose repository transfer/archive/delete/rename administration. Those final repository-state operations must be performed in GitHub administration after reconciliation. No repository is falsely marked as deleted or transferred.

## Truth rule

Repository names, README claims and old deployment notes do not prove a live deployment.

**Production authority = canonical repository + verified build/release path + runtime evidence.**

See:
- `Mind-Reply/mindreply-app/docs/REPOSITORY_REGISTRY.md`
- `Mind-Reply/mindreply-app/REPOSITORY_AUTHORITY.md`
