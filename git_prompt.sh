#!/usr/bin/env bash

GREEN="\[\033[01;32m\]"
RED="\[\033[01;31m\]"
WHITE="\[\033[01;37m\]"
RESET="\[\033[0;00m\]"

function git_stat() {
  git status > /dev/null 2>&1
  if [[ $? -eq "0" ]]; then
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    changes=$(git status --porcelain)
    if [[ -z "$changes" ]]; then
      echo "$GREEN($branch)"
    else
      echo "$RED($branch)"
    fi
  fi
}

function set_prompt() {
  PS1="$WHITE\u@\h:\W $(git_stat)$WHITE\$$RESET "
}

PROMPT_COMMAND=set_prompt
