#!/bin/bash

# It can be a good idea to set your 'username' so it can easily be accessed anywhere in bash and
# You may have a given username for a job, or just put your name for personal use
export USER="<your name>"
echo -e "Welcome back, ${USER}!\n"

# Opens .bash_profile in vscode to edit (must have vscode installed), making editing bash
alias epro="code ~/.bash_profile"

# Refreshes your bash profile instead of having to restart your shell; this can be used if you edit your bash profile while your terminal is open
# Note: all scripts inside will be run again. Also make sure that the path '~/.bash_profile' is correct on your machine
alias brel="source ~/.bash_profile"


