# ~/.bashrc

[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

COUNTER_FILE=~/.pc_launch_counter

if [ ! -f "$COUNTER_FILE"] ; then
	echo 0 > "$COUNTER_FILE"
fi

COUNTER=$(<"$COUNTER_FILE")
COUNTER=$((COUNTER + 1))
echo "$COUNTER" > "$COUNTER_FILE"

echo "PC Launch Count : $COUNTER"

cd_troll() {
	COUNTER=$(<"$COUNTER_FILE")# ~/.bashrc

[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

COUNTER_FILE=~/.pc_launch_counter

if [ ! -f "$COUNTER_FILE"] ; then
	echo 0 > "$COUNTER_FILE"
fi

COUNTER=$(<"$COUNTER_FILE")
COUNTER=$((COUNTER + 1))
echo "$COUNTER" > "$COUNTER_FILE"

echo "PC Launch Count : $COUNTER"

cd_troll() {
	COUNTER=$(<"$COUNTER_FILE")
	if [$COUNTER_FILE > 0] ; then
		echo "gg"
	fi
}






export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'
alias cd="cd_troll"
PS1='\[\e[31;42m\]\u@\h:\w\$\[\e[7m\]] '

	if [$COUNTER_FILE > 0] ; then
		echo "gg"
	fi
}






export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'
alias cd="cd_troll"
PS1='\[\e[31;42m\]\u@\h:\w\$\[\e[7m\]] '
