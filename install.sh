#!bin/sh -eu

cd $HOME
git clone https://github.com/kotamya/dotfiles.git
find . -type f -name setup.sh -exec sh "{}" \;