# Secrets & Environment Inventory

**Rule**: Never store actual secret values in git. This file lists *names*, *purpose*, and *recommended location* only.

Updated: 2026-08-15  
Aligned with: SECURITY.md + ESTATE.yaml (`no_secret_values_in_git`, `never print_secret_values`)

## Inventory

| Name | Purpose | Recommended Location | Used by |
|------|---------|----------------------|---------|
| `VERCEL_TOKEN` | Deployments / project management | GitHub Org secret or Vercel team | CI, deploy workflows |
| `SUPABASE_URL` | Database endpoint | Vercel env (Production + Preview) | Apps, APIs |
| `SUPABASE_ANON_KEY` | Public client key | Vercel env (public) | Frontend clients |
| `SUPABASE_SERVICE_ROLE_KEY` | Server-side admin | Vercel env (server-only) / GitHub secret | Backend, admin jobs |
| `STRIPE_SECRET_KEY` | Billing | Vercel env (server-only) / GitHub secret | Billing flows |
| `STRIPE_WEBHOOK_SECRET` | Webhook verification | Vercel env / GitHub secret | Webhook handlers |
| `GITHUB_TOKEN` / fine-grained PAT | CI, org automation | GitHub Actions (built-in or org secret) | Steward workflows |
| `XAI_API_KEY` / model keys | Inference | Vercel env or GitHub Org secret | Agents / engines |
| `TWILIO_*` (if used) | SMS / voice | Vercel env (server-only) | am-service-ads-engine |
| `CLOUDFLARE_*` | Pages / DNS if used | Cloudflare dashboard + GitHub secret if needed | Aurel / static deploys |

## Placement rules

1. **Org secrets** — shared across multiple repos (prefer for common tokens).
2. **Repo secrets** — only when the credential is truly repo-specific.
3. **Vercel env vars** — production/runtime values; mark sensitive as encrypted.
4. **Never** commit `.env` files containing real values.
5. Rotate immediately on any suspected exposure; record a remediation receipt.

## Owner action

Fill or adjust rows above with the real names used in your systems. Keep values only in the recommended locations. Do not paste values into this file or any other tracked file.
