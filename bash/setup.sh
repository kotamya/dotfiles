#!/bin/sh

echo "------ bash setup start ------"

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
BASHRC_DIR="$HOME"
BASHPROFILE_DIR="$HOME"
PROFILE_DIR="$HOME"
MINTTYRC_DIR="$HOME"

ln -sf "$SCRIPT_DIR/.bashrc" "$BASHRC_DIR/.bashrc"
ln -sf "$SCRIPT_DIR/.bash_profile" "$BASHPROFILE_DIR/.bash_profile"
ln -sf "$SCRIPT_DIR/.profile" "$PROFILE_DIR/.profile"
ln -sf "$SCRIPT_DIR/.minttyrc" "$MINTTYRC_DIR/.minttyrc"

echo "------ bash setup end ------"