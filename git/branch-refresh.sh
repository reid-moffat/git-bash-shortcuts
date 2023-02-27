#!/bin/bash

# Refreshes the local list of branches based on the remote (i.e removes branches that have been deleted)
function brefresh() {
    if [[ ! -d .git ]]; then
        echo "❌ Error: '$(pwd)' is not part of a git repo" &&
            return
    fi

    # Refresh the list of remote branches
    git remote update origin --prune &&

    # Do a check first since this will remove branch you've created but haven't pushed yet
    read -p "Do you wish to delete local branches not on the remote too ('y' to delete)? " response
    if [[ "$response" == "y" ]]; then
        git fetch -p &&
            for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do
                git branch -D $branch
            done
    fi
}
