# Mind-Reply Estate Governance 2026

The organization is a portfolio, not a monolith.

## Classification

Every repository belongs to exactly one primary class:

`control | product | automation | communication | brand | template | experiment | archive`

It must also declare visibility and authority.

## Required repository metadata

Each active repository should declare:

- owner;
- product/job to be done;
- source-of-truth status;
- public/private classification;
- runtime/deployment target;
- domain or intended domain;
- data sensitivity;
- automation dependencies;
- release authority;
- rollback path;
- local product vocabulary.

## Agent policy

Repository agents are specialists. They may inherit common safety rules but must have a product-specific identity and vocabulary.

No shared agent should assume that another repository has the same permissions, data or release process.

## Public/private boundary

Public repositories contain publishable product or open-source material. Private repositories contain owner operations, secrets, customer-sensitive data, private strategy and unfinished work. Personal repositories remain distinct from organization production.

## Release principle

A green build proves only that the tested build passed. A release is complete only when the deployed artifact, domain, critical user path and rollback path are verified.
