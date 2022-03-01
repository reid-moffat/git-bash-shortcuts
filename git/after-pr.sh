#!/bin/bash

# Refreshes local git data after making a PR to main
function after-pr() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    git checkout main &&
    git pull &&
    refresh-branches # See https://github.com/reid-moffat/bash-shortcuts/blob/main/git/refresh-branches.sh
}
