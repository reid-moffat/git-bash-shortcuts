#!/bin/bash

# Creates a branch off of this branch and pushes it to the remote (includes error checking)
#   Parameter: The name of the branch to be created
function create-branch() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo" &&
            return
    fi

    if [ "$#" -ne 1 ]; then
        echo "Error: must supply one parameter as the new branch name" &&
            return
    fi

    git pull &&
        git branch -d "$1" &&
        git push origin -u "$1"
}
