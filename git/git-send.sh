#!/bin/bash

# Sends all your files to the remote in one command
# Note: Your files cannot be pushed if a pull is required
#   Parameter: commit message
function git-send() {
    if [[ ! -d .git ]]; then
        echo "Error: you are not in a git repo" &&
            return
    fi
    
    if [ "$#" -ne 1 ]; then
        echo "Error: must supply a commit message" &&
            return
    fi

    # If the branch requires a pull or is diverged, your changes will not be pushed
    git add -A &&
        git commit -m "$1" &&
        git push
}
