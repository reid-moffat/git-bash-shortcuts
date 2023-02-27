#!/bin/bash

#
# You'll probably be typing the same few commands over and over for git, so why not spend 30 seconds to make a quick alias for it?
#

alias gst="git status" # I hate typing the whole thing every time, probabaly the most useful alias since it's used so much
alias log="git log"
alias logo="git log --oneline"

alias dif="git diff"
alias sdif="git diff --staged" # For already committed files

# Often you'll be working with one, or a couple, of file types; you can easily make a filter to just go through the ones you need
alias csdif="git diff *.js *.css *.html"
alias scsdif="git diff --staged *.js *.css *.html"
alias addcs="git add -u *.js *.css *.html && gst" # -u flag will not add untracked files
