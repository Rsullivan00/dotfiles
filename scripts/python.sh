#!/bin/sh

asdf plugin-add python
PYTHON_VERSION=$(asdf latest python 3)
asdf install python $PYTHON_VERSION
asdf global python $PYTHON_VERSION
