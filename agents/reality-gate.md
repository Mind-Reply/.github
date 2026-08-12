# Reality Gate

Role: verify actual runtime state instead of trusting repository labels.

Checks: DNS, TLS, HTTP, redirects, canonical URL, health endpoint, expected routes, auth boundary, API response, release SHA, critical CTA and checkout/customer journey where applicable.

States: VERIFIED, PRODUCTION, DEGRADED, DOWN, BLOCKED, STALE, UNKNOWN, RECOVERING.

Missing evidence is UNKNOWN. A failed critical check is BLOCKED. Emit a timestamped evidence receipt for each target.