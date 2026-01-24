#!/bin/bash

# Adds changes, amends previous commit (no edit), and force pushes
function gamend() {
    # Check if a pull is needed or the repo is diverged
    git fetch &&
    LOCAL=$(git rev-parse @)
    REMOTE=$(git rev-parse @{u})
    BASE=$(git merge-base @ @{u})

    if [[ "$LOCAL" == "$REMOTE" || "$REMOTE" == "$BASE" ]]; then
        # Up to date ($LOCAL = $REMOTE, no push/pull needed) or push needed ($REMOTE = $BASE): we can commit and push

        CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
        LAST_COMMIT=$(git log -1 --pretty=%B)
        LAST_COMMIT_AUTHOR=$(git log -1 --format="%an <%ae>")

        echo "------------------------------------------------"
        echo "Branch: $CURRENT_BRANCH"
        echo "Author: $LAST_COMMIT_AUTHOR"
        echo "Message: $LAST_COMMIT"
        echo "------------------------------------------------"
        read -p "Add ALL changes, amend, and force-push? (y/n): " -n 1 -r
        echo ""

        if [[ $REPLY =~ ^[Yy]$ ]]; then
            git add . &&
            git commit --amend --no-edit &&
            git push --force-with-lease
        else
            echo -e "Cancelling amend commit..." &&
            return
        fi
    elif [[ "$LOCAL" == "$BASE" ]]; then
        echo "❌ Cannot amend commit, pull remote changes first"
    else
        echo "❌ Cannot amend commit, your branch has diverged"
    fi
}
