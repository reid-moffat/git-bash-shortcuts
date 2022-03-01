#!/bin/bash

# After you make a PR to main, this will run a few commands to refresh you local settings
function after-pr() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    git checkout main &&
    git pull &&
    refresh-branches # See https://github.com/reid-moffat/bash-shortcuts/blob/main/git/refresh-branches.sh
}
