*Note: there is a lot of redudant/missing info, this is in the process of being overhauled*

# Bash Shortcuts
An evolving collection of my favourite bash scripts and shortcuts for efficiency and consistency

*:star:: Top functions/scripts/commands*

Notes/tips:
* Always read the comments- **don't just copy and paste** (many commands have placeholders that need to be filled in or edited)
* These were made and run in [Git Bash](https://git-scm.com/downloads) on my **Windows 10** environment, so I'm using more globally-friendly commands (i.e no needing to install unix commands like 'sudo' or 'tree')
    * *Recommended: [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=en-ca&gl=ca)*
* Add these to your ```.bash_profile``` for ease of use (see [edit-profile](https://github.com/reid-moffat/bash-shortcuts/blob/main/other/edit-profile.sh))

## git
- [git-send](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/git-send.sh): Add, commit and push in one line :star:
- [create-branch](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/create-branch.sh): Creates and pushes a new branch to the remote :star:
- [auto-git-fetch](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/auto-git-fetch.sh): Automatically fetch git updates when you enter a repository
- [after-pr](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/after-pr.sh) Refresh local git data after making a PR to main
- [refresh-branches](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/refresh-branches.sh): Refreshes the list of branches on your local machine and allows for deletion
- [delete-branch](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/delete-branch.sh): Deletes a branch locally and remotely
- [gitignore-refresh](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/gitignore-refresh.sh): Refreshes files in your repo after a .gitignore change
- [in-git-repo](https://github.com/reid-moffat/bash-shortcuts/blob/main/git/in-git-repo.sh): Checks if you are in a git repository

## Aliases
- [cli-navigation](https://github.com/reid-moffat/bash-shortcuts/blob/main/aliases/cli-navigation.sh): Navigate the command line quicker
- [bash-refresh](https://github.com/reid-moffat/bash-shortcuts/blob/main/aliases/bash-refresh.sh): Refreshes your ```.bash_profile``` file

## Other
- [edit-profile](https://github.com/reid-moffat/bash-shortcuts/blob/main/other/edit-profile.sh): Easily edit .bash_profile
- [custom-prompt](https://github.com/reid-moffat/bash-shortcuts/blob/main/other/custom-prompt.sh): Makes your prompt more useful and cleaner

<sub>*(Credit to [Stack Overflow](https://stackoverflow.com/) for most of this 😉)*</sub>
