alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -hal'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

source /usr/share/bash-completion/bash_completion

PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '

export PATH="/opt/nodejs/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# Color for man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

eval "$(rbenv init -)"
