#!/bin/bash

# It can be a good idea to set your 'username' so it can easily be accessed anywhere in bash and
# you may have a given username/ID for a job, or just put your actual name for personal use
export USER="<your name>"
echo -e "Welcome back, ${USER}!\n"

# If you want to always start your terminal at a specific path, simply add a cd to the beginning of your profile
# For example, if you are working with one repository predominantly, you can always start in it
# The example below is since my terminal would start in the root directory, switching it to the home directory
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
