# ~/.bashrc

[[ $- != *i* ]] && return

alias x='startx'
alias vi='vim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PATH=$PATH:/home/lero/bin
export PS1='\[\033[00;32m\]\u\[\033[00m\][at]\[\033[00;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export LESS="-R"
export EDITOR="vim"

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

eval `keychain --agents ssh --nogui -q --eval id_rsa id_rsa_loca`
