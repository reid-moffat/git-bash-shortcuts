#!/bin/bash

# If this is placed in your bash profile, opening/reloading a bash terminal in a git repo will automatically fetch updates
# Example (using https://github.com/reid-moffat/bash-shortcuts/blob/main/other/custom-prompt.sh also): https://www.linkpicture.com/q/2_1205.png
if git rev-parse --git-dir >/dev/null 2>&1; then
    echo "Fetching git updates...";
    if [ -n $(git fetch) ]; then
        echo "All up to date"
    fi
fi
