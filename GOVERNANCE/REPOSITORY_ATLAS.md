# Repository Atlas

This is the classification contract for the organization. Repository names may remain historical; their role must be explicit.

| Class | Examples | Primary purpose | Boundary |
|---|---|---|---|
| Core | `mind-reply-core`, `mindreply` | shared product/runtime foundations | private |
| Owner | `a11k-engine-private`, `control-plane`, `own-core` | owner-only command, policy and stewardship | private |
| Product | `replycontrol`, `mr-touch`, `mindreply-app`, `Aurel` | focused user-facing products | private/public by product |
| Automation | `n8n-workflows-private`, `whatsapp-ai-router` | integrations, events, scheduled operations | private |
| Knowledge | `Understand-Anything`, `genai-stack`, `ai-arena` | research, retrieval, evaluation | public/private by artifact |
| Brand/Web | `mindreply-org-site`, `mindreply-brands`, `mind-reply.com` | public identity and discoverability | public/private by asset |
| Template | starter/template repositories | reusable scaffolding | public |
| Archive | archived repositories | historical reference only | frozen |

## Naming policy
Do not create another repository whose sole purpose is a renamed duplicate. New names must communicate a distinct job. Internal codenames can be creative, but the README must state the plain-English purpose.

## Promotion path
Experiment -> verified capability -> product module -> shared primitive only when reuse is proven. Never promote an experiment into core merely because it is technically interesting.
