# MindReply Org Map & Inventory

This document summarizes the current repository inventory for the Mind-Reply organization and recommended next steps for standardization, archiving, and transfers.

Location: mindreply-org-inventory.csv (CSV attached in this branch)

Summary
-------
- Total repositories discovered: 100+ (see CSV for full list)
- Many repos are archived or legacy; we recommend archiving (not deleting) any repo marked archived=true.
- Action plan proposed: create PRs to apply org-standards (labels, templates, CODEOWNERS, .editorconfig) to active repos. Archive-only for archived repos.

Recommended immediate actions
-----------------------------
1. Apply .editorconfig and .gitattributes across all active repos to normalize encoding and line endings.
2. Apply the standard label taxonomy and add ISSUE + PR templates via PRs to each repo.
3. Add README_BRANDING.md to each repo referencing the shared org brand assets (MRPRODUCTION folder).
4. For personal repos that need transfer into the org: prepare transfer runbook and gather consent per-repo before moving.

Proposed Branch & Merge Policy
------------------------------
- Default branch: main (already the default for most repos). For repos using "master" or "trunk", rename to "main" via a safe rename flow (we will propose per-repo PRs).
- Branch protection: require PR reviews (1), require passing CI, allow squash merge.

Next steps
----------
- I will now create PRs (non-destructive) across active repos I can write to applying the org standards. See the PR list attached to this branch once created.
