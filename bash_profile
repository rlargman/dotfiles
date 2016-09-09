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
source ~/.git/git-completion.bash

# Make the prompt look like this:
# Mon Apr 02 12:06:50 ~/code/airbnb (master) $
#. /usr/local/etc/bash_completion.d/git-prompt.sh
#parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="\[\033[01;32m\]\d \t \w\$(parse_git_branch) \[\033[00m\]\$ "
# Sexy Solarized Bash Prompt, inspired by "Extravagant Zsh Prompt"
# Customized for the Solarized color scheme by Sean O'Neil

if [[ $COLORTERM = gnome-* && $TERM = xterm ]]  && infocmp gnome-256color >/dev/null 2>&1; then TERM=gnome-256color; fi
if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      BASE03=$(tput setaf 234)
      BASE02=$(tput setaf 235)
      BASE01=$(tput setaf 240)
      BASE00=$(tput setaf 241)
      BASE0=$(tput setaf 244)
      BASE1=$(tput setaf 245)
      BASE2=$(tput setaf 254)
      BASE3=$(tput setaf 230)
      YELLOW=$(tput setaf 136)
      ORANGE=$(tput setaf 166)
      RED=$(tput setaf 160)
      MAGENTA=$(tput setaf 125)
      VIOLET=$(tput setaf 61)
      BLUE=$(tput setaf 33)
      CYAN=$(tput setaf 37)
      GREEN=$(tput setaf 64)
    else
      BASE03=$(tput setaf 8)
      BASE02=$(tput setaf 0)
      BASE01=$(tput setaf 10)
      BASE00=$(tput setaf 11)
      BASE0=$(tput setaf 12)
      BASE1=$(tput setaf 14)
      BASE2=$(tput setaf 7)
      BASE3=$(tput setaf 15)
      YELLOW=$(tput setaf 3)
      ORANGE=$(tput setaf 9)
      RED=$(tput setaf 1)
      MAGENTA=$(tput setaf 5)
      VIOLET=$(tput setaf 13)
      BLUE=$(tput setaf 4)
      CYAN=$(tput setaf 6)
      GREEN=$(tput setaf 2)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    # Linux console colors. I don't have the energy
    # to figure out the Solarized values
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

PS1="\[${BOLD}${CYAN}\]\u \[$BASE0\]at \[$MAGENTA\]\h \[$BASE0\]in \[$BLUE\]\w\[$BASE0\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$YELLOW\]\$(parse_git_branch)\[$BASE0\]\$ \[$RESET\]"

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
