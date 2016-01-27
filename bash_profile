# Git
alias gnewb="git checkout -t origin/master -b"
alias gcob="git checkout -b"
alias gplom="git pull origin master"
alias grom="git pull --rebase origin master"
alias grb="git rebase"
alias grbm="git rebase master"
alias gft="git fetch"
# Commented out next line because it was causing error messages when opening a
# new shell
# alias gpfo="git push -f origin $(git rev-parse --abbrev-ref HEAD)"
#alias gclone="git clone"
alias gstl="git stash list"

# Git autocomplete
. ~/.git/git-completion.bash

# Make the prompt look like this:
# Mon Apr 02 12:06:50 ~/code/airbnb (master) $
#. /usr/local/etc/bash_completion.d/git-prompt.sh
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[01;32m\]\d \t \w\$(parse_git_branch) \[\033[00m\]\$ "

# Slack Commands:
# open dev environment
dev() {
    open https://my.dev$1.slack.com/
}

# Vagrant
alias v="vagrant"
alias vpr="vagrant provision"
alias vsh="vagrant ssh"
alias vup="vagrant up"
alias vh="vagrant halt"
alias vsus="vagrant suspend"
alias vr="vagrant resume"

# Zsh
alias zshreload="source $ZDOTDIR/.zshrcr"

### START SLACK-UPDATE-BASH ###
test -e "/usr/local/slack_include/slack_bash_complete.sh" && source /usr/local/slack_include/slack_bash_complete.sh
### END SLACK-UPDATE-BASH ###
