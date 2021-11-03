#!/bin/bash

# Opens .bash_profile in vscode to edit. 'nano .bash_profile'
# works too, but it's not as user friendly
function edit-profile() {
    cd &&
    code .bash_profile &&
    cd -
}
