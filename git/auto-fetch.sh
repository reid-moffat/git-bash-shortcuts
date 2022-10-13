#!/bin/bash

# If this is placed in your bash profile (I put it at the top), opening bash in a repository will automatically fetch updates
# Fetch doesn't pull any changes, just updates metadata and (useful for seeing if changes have been made on the remote)
if git rev-parse --git-dir >/dev/null 2>&1; then
    echo "Fetching git updates..." &&
    git fetch &&
    echo "Metadata up to date"
fi
