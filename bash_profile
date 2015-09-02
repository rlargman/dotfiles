# Goldkey
alias rekey='killall ssh-agent; ssh-add -e /usr/local/lib/opensc-pkcs11.so; ssh-add -s /usr/local/lib/opensc-pkcs11.so -t 28800'
alias rekey1='killall ssh-agent && ssh-add -s /usr/local/lib/opensc-pkcs11.so -t 28800'

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
. /usr/local/etc/bash_completion.d/git-completion.bash

# Make the prompt look like this:
# Mon Apr 02 12:06:50 ~/code/airbnb (master) $
. /usr/local/etc/bash_completion.d/git-prompt.sh
export PS1="\[\033[01;32m\]\d \t \w\$(__git_ps1) \[\033[00m\]\$ "

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

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
