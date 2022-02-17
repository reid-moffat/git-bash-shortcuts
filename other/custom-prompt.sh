#!/bin/bash

# Makes your prompt cleaner and more helpful by spacing out commands and displaying info about the user, device, system, path, and git branch
# Example: https://www.linkpicture.com/q/1_503.png
export USER="your-name" # TODO: update this with your name
export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]$(__git_ps1)\[\033[0m\]\n$ "
export PS2="> "

echo "Welcome back, ${USER}!"
