#!/bin/bash

# Refreshes local git data after making a PR to main
function apr() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    git checkout main && # Replace with the brnahc you use if required
    echo "" &&
    git pull &&
    echo "" &&
    brefresh # See branch-refresh.sh in this directory
}
