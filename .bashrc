# ~/.bashrc

[[ $- != *i* ]] && return

alias x='startx'
alias vi='vim'
alias ls='ls --color=auto -CF'
alias grep='grep --color=auto'

export PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
export LESS='-R'
export EDITOR='vim'
export GOPATH=~/devel/go:~/devel/gopath
export PATH=$PATH:$GOPATH/bin

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
