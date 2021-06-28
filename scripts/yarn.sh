#!/bin/sh


if [ ! -x "$(command -v node)" ]; then
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

  NODE_VERSION=$(asdf latest nodejs)
  asdf install nodejs $NODE_VERSION
  asdf global nodejs $NODE_VERSION
fi


if [ ! -x "$(command -v yarn)" ]; then
  asdf plugin-add yarn
  asdf install yarn latest
  asdf global yarn latest
fi

yarn global add neovim
