#!/bin/bash

# It can be a good idea to set your 'username' so it can easily be accessed anywhere in bash and
# you may have a given username for a job, or just put your name for personal use
export USER="<your name>"
echo -e "Welcome back, ${USER}!\n"

# I had an issue wher the shell would start in the root directory an wasn't sure how to change
# the settings, but a simple few lines can fix that (some terminals have options to do this too)
if [[ "$PWD" == "/" ]]; then
    cd
fi

# With this, opening bash in a repository will automatically fetch updates.
# Fetch doesn't pull any changes, just updates metadata and (useful for seeing if changes have been made on the remote)
if git rev-parse --git-dir >/dev/null 2>&1; then
    echo "Fetching git updates..." &&
    git fetch &&
    echo "Metadata up to date"
fi
