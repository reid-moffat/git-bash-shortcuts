#!/bin/bash


#
# Profile helpers
#

# Opens .bash_profile in vscode to edit (must have vscode installed), making editing your profile much quicker
alias epro="code ~/.bash_profile"

# Refreshes your bash profile so you don't have to restart your shell (note: all scripts inside will be run again)
alias brel="source ~/.bash_profile"


#
# Command-line navigation
#

# Shows detailed information about files in this directory
# Flags: 'l' shows detailed info, 't' sorts by time modififed (recent first) and 'a' shows hiden files (starting with '.')
alias info="ls -lta"

# More logical way to change the current working directory to its parent directory
alias up="cd .."
alias up2="cd ../.." # Goes up 2 directories

# Prints the current working directory (e.g /c/Users/John Smith)
alias path="pwd"

# Easily go to the repository you're working on
alias repo="cd </absolute/path/to/repository>"


#
# File searching and editing
#

# Find file(s) by name in this directory (including subdirectories)
# Notes:
#   -This is case-insensitive; for case-sensitive change -iname to -name
#   -Put the file name in quotes, special characters can mess up the search
#   -This only checks the file name, not directory; e.g find . -iname "src" would not return every file in a src folder
# Examples:
#   findf "foobar.cs" (finds all C# files named foobar)
#   findf "*.sh" (* = wildcard; finds all shell script files)
alias findf="find . -iname"


#
# Other
#

# Add your chrome .exe location to easily open links (note: must be exported, not an alias)
# Usage: "$CHROME" "<url>"
export CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
