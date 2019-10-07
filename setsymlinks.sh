#!/usr/bin/env bash

if [ "$(uname)" = "Darwin" ]; then
  ln -s -f $(pwd)/bash_profile $HOME/.bash_profile
fi

if [ "$(uname)" = "Linux" ]; then
  mkdir -p $HOME/config/terminator
  ln -s -f $(pwd)/terminator/config $HOME/.config/terminator/config
  ln -s -f $(pwd)/bashrc $HOME/.bashrc
fi

ln -s -f $(pwd)/gitconfig $HOME/.gitconfig
ln -s -f $(pwd)/shared_config $HOME/.shared_config
ln -s -f $(pwd)/vimrc $HOME/.vimrc
ln -s -f $(pwd)/git_prompt.sh $HOME/.git_prompt.sh

