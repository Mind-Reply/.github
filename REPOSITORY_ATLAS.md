# Mind-Reply Repository Atlas

## North star

Repositories are products, instruments, or clearly bounded infrastructure. A repository name must communicate its job without forcing every project to inherit the MindReply brand.

## Canonical lanes

| Lane | Repository identity | Purpose |
|---|---|---|
| Foundation | `mind-reply-core` → proposed public identity: `keystone` | Shared runtime contracts, domain primitives, durable foundations. Do not use "MindReply" as the product name here. |
| Customer product | `mindreply` | The customer-facing communication product. |
| Operator surface | `control-plane` | Private owner/operator command surface. |
| Conversation surface | `replycontrol` | Human conversation/reply workspace. |
| Voice/message gateway | `whatsapp-ai-router` | Channel routing and message transport experiments. |
| Web presence | `mind-reply.com` | Public brand website and acquisition surface. |
| Product studio | `mindreply-studio` | Archived lineage; mine useful patterns, do not revive as a production dependency. |
| Production evidence | `mrproduction` | Deployment/production evidence and release material. |
| Brand system | `mindreply-brands` | Brand assets and identity rules. |

## Naming rule

Never repeat the parent brand merely because a repository belongs to the organization. Names should be memorable, pronounceable, purpose-specific, and able to stand alone.

Preferred vocabulary: Keystone, Relay, Lantern, Loom, Harbor, Signal, Atlas, Thread, Hearth, Orbit, Gate, Studio, Command.

Avoid: `*-core`, `*-final`, `*-new`, `*-1`, `production-pack`, `suite-private`, vague demos, and vendor names unless the repository genuinely is a fork or vendor-specific integration.

## Product behavior rule

Every product must answer four questions in its README:

1. Who is this for?
2. What human problem does it remove?
3. What is the smallest meaningful action?
4. What happens when the system is wrong?

## Design rule

Build from human situations rather than AI feature lists. Interfaces should expose intent, evidence, consequences, recovery, and ownership. Unusual vocabulary is permitted only when the surrounding UI makes the meaning obvious.

## Consolidation rule

Do not merge branches because they are busy or large. Merge only when the code has a defined destination, a verified purpose, and a clean dependency boundary. Archive experiments rather than allowing them to become accidental architecture.
