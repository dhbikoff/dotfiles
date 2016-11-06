export PATH="$PATH:$HOME/.scripts"
export PATH="$HOME/.jenv/bin:$PATH"

source /usr/local/etc/bash_completion.d/git-completion.bash
source ~/.shared_config
source ~/.git_prompt.sh

alias ls="ls -A"

eval "$(jenv init -)"
