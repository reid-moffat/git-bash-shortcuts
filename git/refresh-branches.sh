#!/bin/bash

# Refreshes the list of local branches
# This is really just one command, but it's much clearer as a function
function refresh-branches() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    git remote update origin --prune
}
