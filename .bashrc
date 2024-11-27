# ~/.bashrc

[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

COUNTER_FILE=~/.pc_launch_counter

if [ ! -f "$COUNTER_FILE" ] ; then
	echo 0 > "$COUNTER_FILE"
fi

COUNTER=$(<"$COUNTER_FILE")
COUNTER=$((COUNTER + 1))
echo "$COUNTER" > "$COUNTER_FILE"

echo "PC Launch Count : $COUNTER"

function troll() {
if [ "$COUNTER" -ge 10 ]; then
	echo "Hello"
fi
}
troll


update_prompt_color() {
local colors=("\[\e[30;41m\]" "\[\e[31;42m\]" "\[\e[32;43m\]" "\[\e[33;44m\]" "\[\e[34;45m\]" "\[\e[35;46m\]" "\[\e[36;47m\]" "\[\e[37;40m\]" "\[\e[31;47m\]" "\[\e[33;41m\]")
local color_prompt=${colors[$((RANDOM % ${#colors[@]}))]}
local color_input=${colors[$((RANDOM % ${#colors[@]}))]}

echo -e "$color_prompt PS1='\$(cat /tmp/bash_prompt_color) \[\e[0m\]'"
echo -e "$color_input"
}

start_color_changer() {
while true; do
	update_prompt_color
	sleep 1
done
}

if ! pgrep -f "bash_color_changer" > /dev/null; then
	start_color_changer &
fi


PROMPT_COMMAND='update_prompt_color'

stop_color_changer() {
pkill -f "update_prompt_color"
echo "Color changer stropped !"


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
alias stop='stop_color_changer'
PS1='[\u@\h:\W]$'
