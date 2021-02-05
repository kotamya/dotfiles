#!/bin/sh

echo "------ bash setup start ------"

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
BASHRC_DIR="$HOME"
BASHPROFILE_DIR="$HOME"
MINTTYRC_DIR="$HOME"

mv "$BASHRC_DIR/.bashrc" "$BASHRC_DIR/.bashrc.bak"
mv "$BASHPROFILE_DIR/.bash_profile" "$BASHPROFILE_DIR/.bash_profile.bak"
mv "$MINTTYRC_DIR/.minttyrc" "$MINTTYRC_DIR/.minttyrc.bak"

ln -s "$SCRIPT_DIR/.bashrc" "${BASHRC_DIR}/.bashrc"
ln -s "$SCRIPT_DIR/.bash_profile" "${BASHPROFILE_DIR}/.bash_profile"
ln -s "$SCRIPT_DIR/.minttyrc" "${MINTTYRC_DIR}/.minttyrc"

echo "------ bash setup end ------"