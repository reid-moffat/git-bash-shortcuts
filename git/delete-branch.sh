#!/bin/bash

# Deletes a branch locally and on the remote (note: this assumes 'main' is your main branch, not 'master')
# Params:
#   branch name
#   remote name (origin by default)
function delete-branch() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    if [[ "$#" -ne 1 && "$#" -ne 2 ]]; then
        echo "Error: you must supply the branch name and optionally the remote name (origin by default)" &&
            return
    fi

    if [[ $1 == $(git branch --show-current) ]]; then
        echo "You are tyring to delete the current branch. Switching to main..." &&
            git checkout main
    fi

    function delete-branch() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo root" &&
            return
    fi

    if [[ "$#" -ne 1 && "$#" -ne 2 ]]; then
        echo "Error: you must supply the branch name and optionally the remote name (origin by default)" &&
            return
    fi

    if [[ $1 == $(git branch --show-current) ]]; then
        echo "You are tyring to delete the current branch. Switching to main..." &&
            git checkout main
    fi

    # Delete local branch
    git branch -D "$1"

    # Delete the remote branch
    if [ "$#" -ne 1 ]; then
        git push "$2" --delete "$1"
    else
        git push origin --delete "$1"
    fi
}
