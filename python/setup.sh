#!/bin/sh -eu

echo "------ python setup start ------"

pip3 install -Uq pip && pip3 --version
pip3 install -r requirements.txt && pip3 list

poetry config virtualenvs.in-project true 

echo "------ python setup end ------"

