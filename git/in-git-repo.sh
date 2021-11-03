#!/bin/bash

# Lets you know if you ar ecurrently in a git repository (including subdirectories)
function in-git-repo() {
    if git rev-parse --git-dir >/dev/null 2>&1; then
        echo "You are in git repo"
    else
        echo "You are not in a git repo"
    fi
}
