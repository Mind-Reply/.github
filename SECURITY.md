# Security Baseline

Security is P0.

## Secrets

Never commit production credentials, service-role keys, private keys, access tokens, webhook signing secrets or customer data. `.env` files are development artifacts and must remain ignored.

If a real secret is found in current or historical Git data, treat it as compromised. Remove it from the working tree, rotate it at the provider, audit its scope, and assess whether history remediation is required. Deleting the file alone is not remediation.

## Browser/server boundary

Client code may use only explicitly public environment variables. Service credentials, database administration keys, payment secrets and provider tokens remain server-side.

## Production mutations

The following require explicit owner authorization unless a separately documented bounded policy grants authority:

- credentials and secrets
- billing changes
- DNS changes
- repository or organization deletion
- permission changes
- production rollback
- destructive database operations
- external customer/legal claims

## CI security

Production workflows should use least-privilege GitHub tokens, protected environments, dependency and secret scanning, deterministic installs where a lockfile exists, and artifact/release provenance.

Security failures are blocking when they can compromise credentials, customer data, production integrity or release provenance.

## Incident handling

When a secret exposure is suspected:

1. Stop using the credential.
2. Rotate/revoke it at the provider.
3. Identify repositories, workflows and environments that could have consumed it.
4. Remove unsafe tracked content.
5. Review Git history and caches as required.
6. Re-run secret scanning.
7. Record a remediation receipt.
8. Re-verify affected production systems.
