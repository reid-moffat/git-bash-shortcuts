#!/bin/bash

alias gst="git status"
alias log="git log"
alias logo="git log --oneline"

alias dif="git diff"
# If you've already committed files, you need this option
alias sdif="git diff --staged"
# Replace this with the main type of file(s) you're working with to ignore other filetypes
alias csdif="git diff *.cs"
alias scsdif="git diff --staged *.cs"
alias addcs="git add -u *.cs && gst"
