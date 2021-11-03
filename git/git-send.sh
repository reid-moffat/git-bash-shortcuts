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

    git fetch &&
        git add . &&
        git commit -am "$1" &&
        git push
}
