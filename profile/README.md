# Mind-Reply

Independent software workshop operated by Angel L. Krastev.

## Canonical repository architecture

**Rule: one functionally distinct product or system = one canonical repository.**

| Area | Canonical repository |
|---|---|
| MindReply production | [`Mind-Reply/mindreply-app`](https://github.com/Mind-Reply/mindreply-app) |
| MindReply documentation | [`Mind-Reply/mindreply-app-docs`](https://github.com/Mind-Reply/mindreply-app-docs) |
| Public hub | [`Mind-Reply/angellllkr-eng.github.io`](https://github.com/Mind-Reply/angellllkr-eng.github.io) |
| A11-K public surface | [`Mind-Reply/A11-K`](https://github.com/Mind-Reply/A11-K) |
| ResellerPro | [`Mind-Reply/resellerpro`](https://github.com/Mind-Reply/resellerpro) |
| Aether-X | [`Mind-Reply/aether-x`](https://github.com/Mind-Reply/aether-x) |
| Kratos-S | [`Mind-Reply/kratos-s`](https://github.com/Mind-Reply/kratos-s) |
| TapCraft | [`Mind-Reply/tapcraft`](https://github.com/Mind-Reply/tapcraft) |
| RouteForge | [`Mind-Reply/routeforge`](https://github.com/Mind-Reply/routeforge) |
| Aurel | [`Mind-Reply/Aurel`](https://github.com/Mind-Reply/Aurel) |
| Shared standards | [`Mind-Reply/.github`](https://github.com/Mind-Reply/.github) |

## A11-K organization

Core A11-K work is kept under the separate [`A11-K`](https://github.com/A11-K) organization, including `a11k-core`, `a11k-command`, `a11k-ops`, `a11k-vision`, `a11k-achieve`, and `a11k-spaces`.

## Consolidation status

Known overlapping families are recorded in [`REPOSITORY_REGISTRY.md`](https://github.com/Mind-Reply/.github/blob/main/REPOSITORY_REGISTRY.md). They are **review candidates**, not automatically deleted repositories. Content, deployment dependencies, and history must be checked before consolidation.

Archived copies are treated as historical material, not production sources.

## Operating rules

1. Canonical source first; legacy sources second.
2. No duplicate production deployments.
3. Preserve history when consolidating.
4. Never expose secrets or private data.
5. Verify before rename, transfer, deletion, or deployment changes.
6. Keep personal-only work under `angellllkr-eng`; organization production under its owning organization.
