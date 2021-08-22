#!/bin/sh

echo "----- git setup start -----"

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
GITCONFIG_DIR="$HOME"

ln -sf "$SCRIPT_DIR/.gitconfig" "$GITCONFIG_DIR/.gitconfig"

echo "----- git setup end -----"
