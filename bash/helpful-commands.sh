#!/bin/bash

#
# Misc. commands that may come in handy for writing scripts
#

# You can easily automatically start programs if you have teh .exe location
#  To find it, search through your Program Files (try findf in aliases.sh with .exe)
#  or look it up (I found the chrome .exe by just googling 'chrome exe location')
export CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe" # Note: must be exported, not an alias

# The & means 'run process in the background'
# So you can start a process such as opening a url in chrome
# And still continue using the terminal
"$CHROME" "https://google.com/" &

# This gets the process id of the most recent background command (see above)
# Helpful for running commands on the process you created automatically in a script
processId=$!

# Pauses exeution for the specified number of seconds
sleep 30

# Used to stop the background process you started
# If you use this command and the previous 3, it will open a process, wait, then close it
kill $processId

# Open in the background and ignore the output the process creates
(&>/dev/null "$CHROME" $url &)
