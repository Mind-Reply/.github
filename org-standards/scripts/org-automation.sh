#!/usr/bin/env bash
set -euo pipefail

ROOT=$(pwd)
ORG=${ORG:-Mind-Reply}
OPERATION=${OPERATION:-apply}
LOGDIR="$ROOT/org-automation-logs"
mkdir -p "$LOGDIR"

echo "[ORG-AUTO] Starting org automation for $ORG (operation=$OPERATION)"

echo "[ORG-AUTO] Reading inventory from checked-out org-standards"
INVENTORY_FILE="org-standards/mindreply-org-inventory.csv"
if [ ! -f "$INVENTORY_FILE" ]; then
  echo "Inventory file not found: $INVENTORY_FILE" >&2
  exit 1
fi

# Skip header, process CSV: repo_name,default_branch,archived,visibility,url
tail -n +2 "$INVENTORY_FILE" > /tmp/inventory.csv

# Clone template source (.github org-standards) already checked out at org-standards/
TEMPLATE_DIR="$ROOT/org-standards/org-standards"
if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "Template directory not found at $TEMPLATE_DIR, using org-standards/ as fallback"
  TEMPLATE_DIR="$ROOT/org-standards"
fi

# Function: apply templates to a single repo
apply_to_repo() {
  repo_name="$1"
  default_branch="$2"
  archived="$3"
  visibility="$4"
  repo_url="$5"

  echo "[ORG-AUTO] Processing $repo_name (archived=$archived, default_branch=$default_branch)"
  if [ "$archived" = "true" ]; then
    echo "[ORG-AUTO] Skipping archived repo: $repo_name"
    return
  fi

  # Clone repo
  if ! gh repo clone "$ORG/$repo_name"; then
    echo "[ORG-AUTO] Failed to clone $ORG/$repo_name" | tee -a "$LOGDIR/$repo_name.error.log"
    return
  fi
  cd "$repo_name"

  # Ensure we are on the default branch
  git fetch origin "$default_branch":"$default_branch" || true
  git checkout "$default_branch" || git checkout -b "$default_branch" origin/$default_branch || true

  BRANCH_NAME="org/standardize-changes"
  # Create branch
  if git rev-parse --verify "$BRANCH_NAME" >/dev/null 2>&1; then
    echo "[ORG-AUTO] Branch $BRANCH_NAME already exists locally; creating unique branch"
    BRANCH_NAME="org/standardize-changes-$(date +%s)"
  fi
  git checkout -b "$BRANCH_NAME"

  # Copy templates
  mkdir -p .github
  cp -R "$TEMPLATE_DIR/"* .github/ 2>/dev/null || true

  # Add editorconfig and gitattributes if present in template dir
  if [ -f "$TEMPLATE_DIR/.editorconfig" ]; then
    cp "$TEMPLATE_DIR/.editorconfig" . || true
  fi
  if [ -f "$TEMPLATE_DIR/.gitattributes" ]; then
    cp "$TEMPLATE_DIR/.gitattributes" . || true
  fi

  # Commit changes if any
  git add -A
  if git diff --staged --quiet; then
    echo "[ORG-AUTO] No changes to commit for $repo_name"
  else
    git commit -m "chore(org): apply org standards (templates, editorconfig, CODEOWNERS, branding)"
    if [ "$OPERATION" = "apply" ]; then
      git push -u origin "$BRANCH_NAME"
      # Create PR
      PR_URL=$(gh pr create --title "chore(org): apply org standards" --body "Applies org standards: ISSUE/PR templates, CODEOWNERS draft, README_BRANDING, .editorconfig, labels (via script)." --base "$default_branch" --head "$BRANCH_NAME" --json url --jq .url)
      echo "[ORG-AUTO] Created PR: $PR_URL"
      echo "$PR_URL" >> "$LOGDIR/prs_created.txt"

      # Optionally auto-merge
      if [ "${AUTO_MERGE:-false}" = "true" ]; then
        echo "[ORG-AUTO] Attempting auto-merge for $PR_URL"
        # Try enabling auto-merge if available and merge when checks pass
        gh pr merge --auto --squash --repo "$ORG/$repo_name" || true
      fi
    else
      echo "[ORG-AUTO] Dry-run mode: would push branch and open PR for $repo_name"
    fi
  fi

  # Create labels (best-effort)
  if [ "$OPERATION" = "apply" ]; then
    echo "[ORG-AUTO] Creating standard labels for $repo_name"
    while IFS= read -r label_line; do
      name=$(echo "$label_line" | cut -d'|' -f1)
      color=$(echo "$label_line" | cut -d'|' -f2)
      description=$(echo "$label_line" | cut -d'|' -f3)
      gh api --method POST "/repos/$ORG/$repo_name/labels" -f name="$name" -f color="$color" -f description="$description" || true
    done < <(printf "bug|d73a4a|Problems to fix
critical|b60205|Showstopper / P0
enhancement|a2eeef|Improvements
feature|0e8a16|New capability
documentation|0e8a16|Docs & guides
infra|c6cbd1|Infrastructure & ops
security|d87600|Security issues
backlog|f1f8ff|Candidate backlog
priority/high|b60205|High priority
priority/medium|fbca04|Medium priority
priority/low|0e8a16|Low priority
")
  fi

  # Return to root
  cd "$ROOT"
  # Clean up clone
  rm -rf "$repo_name"
}

# Read inventory and apply
while IFS=, read -r repo_name default_branch archived visibility url; do
  # trim whitespace
  repo_name=$(echo "$repo_name" | tr -d '"')
  default_branch=$(echo "$default_branch" | tr -d '"')
  archived=$(echo "$archived" | tr -d '"')
  visibility=$(echo "$visibility" | tr -d '"')
  url=$(echo "$url" | tr -d '"')

  # skip empty lines
  if [ -z "$repo_name" ]; then
    continue
  fi

  # apply templates
  apply_to_repo "$repo_name" "$default_branch" "$archived" "$visibility" "$url" || true

done < /tmp/inventory.csv

echo "[ORG-AUTO] Completed org automation run. PRs created listed in $LOGDIR/prs_created.txt"
