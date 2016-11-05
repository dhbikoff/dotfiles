source /usr/share/bash-completion/bash_completion
source ~/.shared_config

GREEN="\[\033[01;32m\]"
RED="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
RESET="\[\033[0;00m\]"

function git_stat() {
  git status > /dev/null 2>&1
  if [[ $? -eq "0" ]]; then
    branch=$(git rev-parse --abbrev-ref HEAD)
    changes=$(git status --porcelain)
    if [[ -z "$changes" ]]; then
      echo "$GREEN[$branch] "
    else
      echo "$RED[~$branch] "
    fi
  fi
}

function set_prompt() {
  PS1="$BLUE\u@\h:\w $(git_stat)$BLUE\$$RESET "
}

PROMPT_COMMAND=set_prompt
