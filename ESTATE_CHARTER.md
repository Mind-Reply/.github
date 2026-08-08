# Product Estate Charter

The Mind-Reply organization is an estate of products, experiments, systems, and operational tools. It is not a single application with many names.

## Four layers

### 1. Products
Customer-facing identities with their own promise, language, pricing, and design.

### 2. Experience systems
Reusable interaction patterns: accessibility, proof states, recovery, navigation primitives, mobile behavior, and telemetry conventions.

### 3. Systems
Infrastructure and orchestration that should remain mostly invisible to customers. Kestrel is the current internal identity for the principal core systems layer.

### 4. Control
Owner/operator tooling. The current control-plane identity is **Cairn**: it records decisions, checkpoints, approvals, drift, and recovery paths.

## Repository naming

Repository names are allowed to remain historical implementation coordinates. Product names must not be inferred from repository names.

When a repository becomes a real product, choose a distinct product identity based on its user problem—not on the parent organization's name.

## Portfolio rules

- One purpose per product.
- One primary audience per product.
- One distinctive behavior per product.
- No duplicated marketing promises across products.
- No automatic inheritance of visual identity.
- Shared infrastructure must remain vendor-portable where practical.
- Experimental repositories must be labelled as experiments until evidence promotes them.
- Archived repositories are not resurrected merely to avoid creating a cleaner implementation.

## Quality gate

Before promotion, a product must answer:

1. Who is this for?
2. What human problem disappears?
3. What becomes easier or safer?
4. What is the product's distinctive behavior?
5. What happens when it is wrong?
6. What proof does the user receive?
7. What is the simplest phone interaction?

If these answers are weak, more features are not the answer.
