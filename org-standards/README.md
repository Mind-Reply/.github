Org Automation README

This folder contains the automation workflow and script that will apply org standards (templates, labels, CODEOWNERS, .editorconfig) across repositories in the Mind-Reply org.

How it works:
- The workflow .github/workflows/org-automation.yml checks out the org-standards branch (org/standardize-1) from the .github repo, authenticates using the ORG_ADMIN_PAT secret, and runs the org-standards/scripts/org-automation.sh script.
- The script reads the inventory CSV present in the org-standards branch and iterates over non-archived repos, cloning each repo, creating a branch org/standardize-changes, copying templates, committing, pushing, and opening a PR.

Usage:
- Ensure you have added a short-lived PAT to the repository secrets named ORG_ADMIN_PAT with scopes: repo, admin:org.
- Go to the Actions tab and run the "Organization Standardization & Automation" workflow (workflow_dispatch). Use operation=apply to actually push changes and create PRs. Use operation=dry-run for a dry run.

Notes & safety:
- This script will create branches and PRs; it will not merge, delete, or transfer repositories unless further automation is added.
- Merges, transfers, and deletions are potentially destructive; enable and authorize them only after reviewing the PRs.
