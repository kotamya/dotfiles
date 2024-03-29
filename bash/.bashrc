cd ~/

PS1='\[\033]0;$PWD\007\]' # set window title

if test -z "$WINELOADERNOEXEC" # show branch
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
		PS1="$PS1"'\[\033[36m\]'  # cyan
		PS1="$PS1"'`__git_ps1`'
	fi
fi

PS1="$PS1"'\[\033[0m\]'   # white
PS1="$PS1"'$ '

# Set alias
source $HOME/dotfiles/bash/alias.sh

# Self-defined functions
calc() {
	awk "BEGIN {print $*}"
}

wttr() {
	curl v2.wttr.in/"${1:-Chiyoda}"?F
}

lnkpath() {
	powershell -Command "(new-object -comobject wscript.shell).createShortcut(\"$1\").TargetPath" | sed -e 's/\\/\//g'
}
