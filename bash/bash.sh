#!/bin/bash

# Refreshes your bash profile instead of having to restart your shell; this can be used if you edit your bash profile while your terminal is open
# Note: all scripts inside will be run again. Also make sure that the path '~/.bash_profile' is correct on your machine
alias bash-reload="source ~/.bash_profile"

# Opens .bash_profile in vscode to edit
# 'nano .bash_profile' works too, but it's not as easy to edit
alias epro="code ~/.bash_profile"
