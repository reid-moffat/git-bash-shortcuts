#!/bin/bash

#
# Misc. commands that may come in handy for writing scripts
#

# The & means 'run process in the background'
# So you can start a process such as opening a url in chrome (see aliases.sh)
# And still continue using the terminal
"$CHROME" $url &

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
