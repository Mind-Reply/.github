# Estate subagents

These are bounded operating roles, not autonomous authority to mutate the estate.

Each role produces evidence and can block unsafe progression. Production mutation remains behind GitHub protected environments and explicit owner approval for high/critical actions.

The registry is intentionally vendor-neutral. A future runner may implement these roles using GitHub Actions, an external worker, or the A11-K command system. The role contracts remain stable even if the implementation changes.

## Minimum operating loop

DISCOVER → CLASSIFY → CHECK → EVIDENCE → DECIDE → APPROVE → EXECUTE → VERIFY → RECEIPT

No receipt means the operation is incomplete.
