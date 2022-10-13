#!/bin/bash

# Refreshes local git data after making a PR to main
function apr() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    git checkout main &&
    echo "" &&
    git pull &&
    echo "" &&
    refresh-branches # See https://github.com/reid-moffat/bash-shortcuts/blob/main/git/refresh-branches.sh
}
