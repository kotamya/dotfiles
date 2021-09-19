#!bin/sh -eu

cd $HOME
git clone https://github.com/kotamya/dotfiles.git
find ./dotfiles/ -type f -name setup.sh -exec sh "{}" \;

