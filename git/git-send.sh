#!/bin/bash

# Adds, commits and pushes ALL your local changes
#   Parameter: commit message (required)
function gsend() {
    # Verify you are in a repo and only a commit message was supplied
    if [[ ! -d .git ]]; then
        echo "❌ '$(pwd)' is not part of a git repo" &&
            return
    fi
    if [ "$#" -eq 0 ]; then
        echo '❌ Must supply a commit message. Usage: gsend "commit message"' &&
            return
    fi
    if [ "$#" -ne 1 ]; then
        echo '❌ Unknown parameter(s): only one string allowed for commit message. Usage: gsend "commit message"' &&
            return
    fi

    # Check if a pull is needed or the repo is diverged (see https://stackoverflow.com/a/3278427/12303271)
    git fetch &&
    LOCAL=$(git rev-parse @)
    REMOTE=$(git rev-parse @{u})
    BASE=$(git merge-base @ @{u})

    if [[ $LOCAL = $REMOTE || $REMOTE = $BASE ]]; then
        # Up to date ($LOCAL = $REMOTE, no push/pull needed) or push needed ($REMOTE = $BASE): we can commit and push
        git add -A &&
            git commit -m "$1" &&
            git push
    elif [[ $LOCAL = $BASE ]]; then
        echo "❌ Cannot commit, pull remote changes first"
    else
        echo "❌ Cannot commit, your branch has diverged"
    fi
}
