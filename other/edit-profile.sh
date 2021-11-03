#!/bin/bash

# Opens .bash_profile in vscode to edit
# 'nano .bash_profile' works too, but it's not as easy to edit
function edit-profile() {
    cd &&
    code .bash_profile &&
    cd -
}
