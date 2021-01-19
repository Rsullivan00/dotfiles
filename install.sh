#!/usr/bin/env bash

currentdir=$(pwd)

if [ ! -f $HOME/.bash_profile ]; then
  echo "Linking bash profile"
  ln -s $currentdir/bash_profile $HOME/.bash_profile
fi

if [ ! -f $HOME/.bash_aliases ]; then
  echo "Linking bash aliases"
  ln -s $currentdir/bash_aliases $HOME/.bash_aliases
fi

if [ ! -f $HOME/.asdfrc ]; then
  echo "Linking asdfrc"
  ln -s $currentdir/asdfrc $HOME/.asdfrc
fi

if [ -x "$(command -v apt)" ]; then
  sudo apt update
  sudo apt install -y curl git build-essential zlib1g-dev libssl-dev libffi-dev
fi

if [ ! -x "$(command -v asdf)" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"
fi

echo "Setting up neovim..."
./scripts/neovim.sh

echo "Installing NVM and Yarn..."
./scripts/yarn.sh

echo "Installing Python..."
./scripts/python.sh

echo "Setting up git..."
./scripts/git.sh

. $HOME/.bash_profile
