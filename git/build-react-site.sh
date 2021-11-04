#!/bin/bash

# Builds a react site using yarn and github pages from souce code
# !!!  IMPORTANT  !!!: This is just a general template for building a react site, you will likely have
# to change a fair amount of this code for your needs (repo root, branches, location of the build files, etc)
function build-react-site() {
    # Ensures you are in the root of the repository (any branch is ok)
    REPO_ROOT="/absolute/path/of/your/repo/root"
    if [ "${PWD}" != "${REPO_ROOT}" ]; then
        echo -e "Error: You are not in the <site> repo root. Correct path:\n${REPO_ROOT}" &&
            return
    fi

    # If you are in the main branch, you will only change branches once
    # This allows us to return to the branch we were at before running this function
    BRANCH="$(git rev-parse --abbrev-ref HEAD)"
    IN_MAIN="0"
    if [ "$BRANCH" = "main" ]; then
        IN_MAIN="1"
    fi

    # Builds the site based on the main branch, placing the build files in the directory docs/
    # of the branch github-pages
    git checkout main &&
        git pull &&
        yarn build &&
        git checkout github-pages &&
        cp -R build/ docs/ && # build/ is in .gitignore and docs/ is the directory github pages uses for the site
        git-send "build update" && # See git-send.sh in this directory (this adds, commits and pushes the files)
        if [ IN_MAIN -eq "0" ]; then
            git checkout @{-1} &&
        fi
        git checkout @{-1} &&
        echo -e "\nSucccessful build of <site>" &&
        echo "Check workflows here: <URL to your github pages branch>"
}
