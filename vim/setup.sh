#!/bin/sh

echo "----- vim setup start -----"

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
VIMRC_DIR="$HOME"

ln -sf "$SCRIPT_DIR/.vimrc" "$VIMRC_DIR/.vimrc"

echo "----- vim setup end -----"

