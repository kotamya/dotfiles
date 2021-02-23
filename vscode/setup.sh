#!/bin/sh

echo "------ vscode setup start ------"

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
SETTINGS_DIR=~/AppData/Roaming/Code/User
SNIPPETS_DIR=~/AppData/Roaming/Code/User/snippets

ln -sf "$SCRIPT_DIR/settings.json" "$SETTINGS_DIR/settings.json"
ln -sf "$SCRIPT_DIR/snippets.code-snippets" "$SNIPPETS_DIR/snippets.code-snippets"


# install extensions
cat extensions | while read line
do
    code --install-extension $line
done

code --list-extensions > extensions

echo "------ vscode setup end ------"