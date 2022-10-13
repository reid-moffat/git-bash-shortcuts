#!/bin/bash

# Opens .bash_profile in vscode to edit (must have vscode installed), making editing your profile much quicker
alias epro="code ~/.bash_profile"

# Refreshes your bash profile so you don't have to restart your shell (note: all scripts inside will be run again)
alias brel="source ~/.bash_profile"

# Shows detailed information about files in this directory
# Flags: 'l' shows detailed info, 't' sorts by time modififed (recent first) and 'a' shows hiden files (starting with '.')
alias info="ls -lta"

# More logical way to change the current working directory to its parent directory
alias up="cd .."
alias up2="cd ../.." # Goes up 2 directories

# Prints the current working directory (e.g /c/Users/John Smith)
alias path="pwd"
