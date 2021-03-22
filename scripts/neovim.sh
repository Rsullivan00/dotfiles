#!/usr/bin/env bash

asdf plugin add neovim
asdf install neovim stable
asdf global neovim stable

mkdir -p $HOME/.config
ln -s $PWD/config/nvim $HOME/.config/nvim

if [ ! -f $HOME/.config/nvim/autoload/plug.vim ]; then
  curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

pip3 install neovim
