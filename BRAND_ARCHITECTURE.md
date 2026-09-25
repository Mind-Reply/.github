# BRAND_ARCHITECTURE.md

# MindReply / A11-K Estate Brand Architecture

Status: ACTIVE  
Owner authority: A.K.  
Purpose: one clear public identity per product, one canonical production source per system, zero brand-name ambiguity.

## 1. Portfolio hierarchy

**A.K.** — owner and final authority.

**MindReply** — primary commercial software and delivery brand.

**A11-K** — separate intelligence, command and operating brand; not a synonym for MindReply.

## 2. Product brands

| Brand | Function | Canonical production/source location |
|---|---|---|
| **MindReply** | Commercial product platform, decision/execution/evidence experience | `Mind-Reply/mindreply-app` |
| **ResellerPro** | Deployment, domain, hosting and reseller control product | `angellllkr-eng/resellerpro-platform` until an organisational source is explicitly verified |
| **A11-K** | Intelligence, command and owner-operating product | `Mind-Reply/A11-K` |
| **Aurel** | Premium experience / strategic systems product | `Mind-Reply/Aurel` |
| **PatchTalk** | Communications and conversational delivery product | `Mind-Reply/whatsapp-ai-router` |
| **LeadLeak Fix** | Commercial service brand | Service property; repository must not invent a second public brand |
| **Workflow Clinic** | Workflow diagnosis/repair service | Service property |
| **Site Rescue Desk** | Website/conversion/release repair service | Service property |
| **Fintech Signal Desk** | Financial/market signal service | Service property |

## 3. Internal-only names

These are system names, not public products:

- Control Plane
- Crownline
- Proofline
- Continuity Ledger
- Reality Delta
- Nowline
- Operator Guild
- Patternwright
- Venture Foundry

Always pair an internal codename with its plain-English function in documentation.

## 4. Canonical repository rule

One production capability = one authoritative production repository.

The canonical MindReply product repository is:

`Mind-Reply/mindreply-app`

The following are source, migration, private-control or historical repositories and must not silently become competing production roots:

- `Mind-Reply/mind-reply-core`
- `angellllkr-eng/mind-reply-core`
- `angellllkr-eng/mindreply`
- `angellllkr-eng/mindreply-control`
- `angellllkr-eng/mindreply-org-site`
- `Mind-Reply/mind-reply-app`
- `Mind-Reply/mind-reply.com`
- other similarly named legacy repositories

## 5. Namespace rule

**Mind-Reply organization:** production products, public applications, official documentation and shared organisational standards.

**angellllkr-eng personal namespace:** private engineering, provenance, experiments, source recovery and products awaiting organisational promotion.

A personal repository with a product name does not create a second public brand.

## 6. Naming standard

Public product names use:

- one spelling;
- one capitalization;
- one product meaning;
- one primary domain;
- one canonical production repository.

Avoid names such as:

- copy-of-*
- *-1
- next*
- private/public variants used as competing product names;
- mindreply/mindreply/mind-reply mixtures;
- A11K/A11-K mixtures for the same public product;
- ResellerPro/reseller-pro/resellerpro-platform as separate brands.

Repository names may remain technical identifiers while the product brand remains stable.

## 7. Legacy handling

A duplicate-looking repository is not deleted merely because its name overlaps.

Required sequence:

**COMPARE → EXTRACT → VERIFY → MARK LEGACY → ARCHIVE/RETIRE**

No unique code, design, documentation or provenance is discarded.

## 8. Deployment standard

All agents use:

**GitHub → validation → ResellerPro → smoke/health → evidence**

No new Vercel or Railway production path is introduced unless explicitly authorised as an exception.

Missing ResellerPro access or authoritative deployment evidence = **BLOCKED / UNVERIFIED**, not a simulated deployment.

## 9. Truth standard

Repository existence is not production evidence.

Brand presence is not customer evidence.

Source code is not deployment evidence.

A domain response is not deployment-provenance evidence.

Every production claim requires current evidence.
