#!/bin/bash

#
# This file is for gerrit (https://www.gerritcodereview.com/),
# a github alterative that uses different syntax and practices with git
#

# Gerrit has a bit of a different system than github for pushing changes
# If you already have a commit and want to amend it, this saves some typing
# Usage: Add the files you want to ad to this commit, then run 'amend <branch name>''
function amend() { # Amends the current commit (no edit) and pushes to the specified branch
    if [ $# -ne 1 ]; then
        echo "1 Parameter is required: branch name (e.g main or auth)"
        return 2
    fi

    git commit --amend --no-edit && # --no-edit won't open up the commit message to edit
    git push origin HEAD:refs/for/${1}
}
