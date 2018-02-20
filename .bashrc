# ~/.bashrc

[[ $- != *i* ]] && return

shopt -s histappend
shopt -s checkwinsize

alias chroma='mpv http://176.31.123.212:9000/'
alias gadd='git add'
alias gamend='git commit -v -a --amend'
alias gcommit='git commit -v -a'
alias gdiff='git diff'
alias glog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gpull='git pull --rebase'
alias gpush='git push'
alias gstat='git status'
alias gshow='git show'
alias grep='grep --color=auto'
alias ls='ls --color=auto -CF'
alias sup='sudo salt-call --local state.highstate --pillar-root=/srv/salt/pillar'
alias up='yaourt -Syua'
alias vi='vim'
alias vpnon='nmcli con up work --ask'
alias vpnoff='nmcli con down work'
alias x='startx'

export PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
export LESS='-R'
export EDITOR='vim'
export GOPATH=~/devel/go:~/devel/gopath
export PATH=$PATH:~/bin:~/devel/go/bin
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups
export HISTIGNORE='ls:bg:fg:history'
export TERM=rxvt-256color

# ssh
ssh-add -l &>/dev/null
if [ "$?" == 2 ]; then
  test -r ~/.ssh-agent && \
    eval "$(<~/.ssh-agent)" >/dev/null

  ssh-add -l &>/dev/null
  if [ "$?" == 2 ]; then
    (umask 066; ssh-agent > ~/.ssh-agent)
    eval "$(<~/.ssh-agent)" >/dev/null
    ssh-add
    ssh-add ~/.ssh/id_rsa_gms
  fi
fi
