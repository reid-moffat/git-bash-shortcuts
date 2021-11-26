#!/bin/bash

# Refreshes the local list of branches based on the remote
function refresh-branches() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    # Refresh the list of remote branches
    git remote update origin --prune &&

    # This will delete all the local branches not on the remote, so a confirmation is a good idea
    read -p "Do you wish to delete local branches not on the remote too ('y' to delete)? " response
    if [[ "$response" == "y" ]]; then
        git fetch -p &&
            for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do
                git branch -D $branch
            done
    fi
}
