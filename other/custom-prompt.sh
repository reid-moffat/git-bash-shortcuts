#!/bin/bash

# Makes your prompt cleaner and more useful
# The promp will display info about the user, device, system and path (plus current git branch for repositories), as well as spacing out commands for ease of viewing
export USER="your-name"
export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]$(__git_ps1)\[\033[0m\]\n$ "
export PS2="> "

echo "Welcome back, ${USER}!"