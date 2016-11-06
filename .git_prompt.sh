#!/usr/bin/env bash

GREEN="\[\033[01;32m\]"
YELLOW="\[\033[01;31m\]"
WHITE="\[\033[01;37m\]"
RESET="\[\033[0;00m\]"

function git_stat() {
  git status > /dev/null 2>&1
  if [[ $? -eq "0" ]]; then
    branch=$(git rev-parse --abbrev-ref HEAD)
    changes=$(git status --porcelain)
    if [[ -z "$changes" ]]; then
      echo "$GREEN($branch) "
    else
      echo "$YELLOW($branch) "
    fi
  fi
}

function set_prompt() {
  PS1="$WHITE\w $(git_stat)$WHITE\$$RESET "
}

PROMPT_COMMAND=set_prompt
