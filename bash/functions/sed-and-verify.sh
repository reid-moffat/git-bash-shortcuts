#!/bin/bash

# Replaces text in a file in-place and verifies that it worked
# Params:
#  1) Text to be replaced (properly escaped)
#  2) Text to replace it with (properly escaped)
#  3) Path to file to replace
#  4) How many cases should have been replaced (will)
#  5) String to print to the console is sucessful (after a check mark)
#  6) String to print to the console is unsucessful (after a red x)
# (Params 5 and 6 are optional, but either both of them are present for neither are)
function sed-and-verify() {
    if [[ "$#" -ne 6 && "$#" -ne 4 ]]; then
        echo "❌ 4 or 6 parameters are required, $# were provided"
        return
    fi

    # Replace text
    sed -i "s/$1/$2/" $3 &&
    if [[ $(grep -o "$2" $3 | wc -l) == $4 ]]; then
        echo "✅ Successfully replaced $4 instances of '$1' to '$3' in $4"
    else
        echo "❌ $6"
    fi
}
