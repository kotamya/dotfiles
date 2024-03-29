#!/bin/sh -eu

echo "------ python setup start ------"

SCRIPT_DIR=$(cd $(dirname $0) && pwd)

pip3 install -Uq pip && pip3 --version
pip3 install -r $SCRIPT_DIR/requirements.txt && pip3 list
pip3 install pyenv-win -t $HOME/.pyenv --upgrade

poetry config virtualenvs.in-project true 

echo "------ python setup end ------"

