#!/bin/bash

# Do a hard reset and pull on the current branch (with a confirmation)
function hres() {
    REPO=$(git rev-parse --show-toplevel)
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

    read -p "Are you sure you want to perform a HARD RESET (and pull) on '$CURRENT_BRANCH' in '$(basename $REPO)'? (y/n): " -n 1 -r
    echo -e "\n"
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git reset --hard origin/"$CURRENT_BRANCH" &&
            git pull
    else
        echo -e "Cancelling reset..." &&
            return
    fi
}
