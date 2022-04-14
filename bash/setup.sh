#!/bin/sh

echo "------ bash setup start ------"

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
BASHRC_DIR="$HOME"
BASHPROFILE_DIR="$HOME"
MINTTYRC_DIR="$HOME"

ln -sf "$SCRIPT_DIR/.bashrc" "$BASHRC_DIR/.bashrc"
ln -sf "$SCRIPT_DIR/.bash_profile" "$BASHPROFILE_DIR/.bash_profile"
ln -sf "$SCRIPT_DIR/.minttyrc" "$MINTTYRC_DIR/.minttyrc"

curl -OL http://downloads.sourceforge.net/gnuwin32/tree-1.5.2.2-bin.zip
sudo unzip -p tree-*.zip bin/tree.exe > "C:/Program Files/Git/cmd/tree.exe"
rm -rf tree-.zip

echo "------ bash setup end ------"

