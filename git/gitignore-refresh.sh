#!/bin/bash

# Refreshes this repository to account for any .gitignore changes
function refresh-gitignore() {
    ROOT=$(git rev-parse --show-prefix)
    if [[ -z "$ROOT" ]]; then
        ROOT="." # If you are in the root directory, it returns an empty string, not .
    fi

    # If the cache was already cleared, git won't be able to do it again since there is no git root
    git add "$ROOT" &&
        git rm -r --cached "$ROOT" && # This does not remove your git repo, just your local cache
        git add "$ROOT" # Everything is back to normal after this command
}
