#!/bin/bash

# Replaces text in a file in-place and verifies that it worked (i.e. there haven't been any breaking git changes to the file)
# Params:
#  1) Text to be replaced (properly escaped)
#  2) Text to replace it with (properly escaped)
#  3) Path to file to replace
#  4) How many cases should have been replaced
#     (will be use for verification; for example in a script to make sure the file you're operating on hasn't changed and broken the script)
function sed-and-verify() {
    if [[ "$#" -ne 4 ]]; then
        echo "❌ 4 parameters are required, $# were provided"
        echo "Usage: sed-and-verify [text to replace] [text to replace it with] [file to perform sed on] [expected amount of replacements]"
        return
    fi

    # Replace text
    sed -i "s/$1/$2/" $3 &&
    if [[ $(grep -o "$2" $3 | wc -l) == $4 ]]; then
        echo "✅ Successfully replaced $4 instances of '$1' with '$2' in $3"
    else
        echo "❌ Error replacing '$4' instances of '$1' with '$2' in $3"
    fi
}
