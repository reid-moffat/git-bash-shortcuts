#!/bin/bash

# Refreshes local git data after making a PR to main
function apr() {
    if [[ ! -d .git ]]; then
        echo "❌ Error: '$(pwd)' is not part of a git repo" &&
            return
    fi

    git checkout main && # Replace with the branch you use (if required)
    echo "" &&
    git pull &&
    echo "" &&
    brefresh # See branch-refresh.sh in this directory
}
