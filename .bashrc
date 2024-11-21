 # ~/.bashrc
  2
  3 # If not running interactively, don't do anything
  4 [[ $- != *i* ]] && return
  5
  6 if [ -d ~/afs/bin ] ; then
  7 »·······export PATH=~/afs/bin:$PATH
  8 fi
  9
 10 if [ -d ~/.local/bin ] ; then
 11 »·······export PATH=~/.local/bin:$PATH
 12 fi
 13
 14 COUNTER_FILE=~/.pc_launch_counter
 15
 16 if [ ! -f "$COUNTER_FILE"]; then
 17 »·······echo 0 > "$COUNTER_FILE"
 18 fi
 19
 20 COUNTER=$(<"$COUNTER_FILE")
 21 COUNTER=$((COUNTER + 1))
 22 echo "$COUNTER" > "$COUNTER_FILE"
 23
 24 echo "PC Launch Count : $COUNTER"
 25
 26 export LANG=en_US.utf8
 27 export NNTPSERVER="news.epita.fr"
 28
 29 export EDITOR=vim
 30 #export EDITOR=emacs
 31
 32 # Color support for less
 33 #export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
 34 #export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
 35 #export LESS_TERMCAP_me=$'\E[0m'           # end mode
 36 #export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
 37 #export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
 38 #export LESS_TERMCAP_ue=$'\E[0m'           # end underline
 39 #export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
 40
 41 alias ls='ls --color=auto'
 42 alias grep='grep --color -n'
 43 PS1='\[\e[31;42m\]\u@\h:\w\$\[\e[7m\]] '
