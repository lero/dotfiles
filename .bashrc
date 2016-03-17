# ~/.bashrc

[[ $- != *i* ]] && return

shopt -s histappend
shopt -s checkwinsize

alias chroma='mpv http://85.25.86.69:8000'
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
alias up='sudo salt-call --local state.highstate --pillar-root=/srv/salt/pillar'
alias vi='vim'
alias x='startx'

export PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
export LESS='-R'
export EDITOR='vim'
export GOPATH=~/devel/go:~/devel/gopath
export PATH=$PATH:~/devel/go/bin
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups
export HISTIGNORE='ls:bg:fg:history'

man() {
  env \
  LESS_TERMCAP_mb=$'\E[1;31m' \
  LESS_TERMCAP_md=$'\E[1;31m' \
  LESS_TERMCAP_me=$'\E[0m' \
  LESS_TERMCAP_se=$'\E[0m' \
  LESS_TERMCAP_so=$'\E[1;44;33m' \
  LESS_TERMCAP_ue=$'\E[0m' \
  LESS_TERMCAP_us=$'\E[1;32m' \
  man "$@"
}

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
