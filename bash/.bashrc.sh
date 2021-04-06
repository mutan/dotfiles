# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Aliases and functions in separate file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

# Colours
color_reset='\e[0m'
color_black='\e[0;30m' # Black
color_red='\e[0;31m' # Red 
color_green='\e[0;32m' # Green
color_yellow='\e[0;33m' # Yellow
color_blue='\e[0;34m' # Blue
color_purple='\e[0;35m' # Purple
color_cyan='\e[0;36m' # Cyan
color_white='\e[0;37m' # White
color_black_b='\e[1;30m' # Black Bold
color_red_b='\e[1;31m' # Red Bold
color_green_b='\e[1;32m' # Green Bold
color_yellow_b='\e[1;33m' # Yellow Bold
color_blue_b='\e[1;34m' # Blue Bold
color_purple_b='\e[1;35m' # Purple Bold
color_cyan_b='\e[1;36m' # Cyan Bold
color_white_b='\e[1;37m' # White Bold
color_black_u='\e[4;30m' # Black Underline
color_red_u='\e[4;31m' # Red Underline
color_green_u='\e[4;32m' # Green Underline
color_yellow_u='\e[4;33m' # Yellow Underline
color_blue_u='\e[4;34m' # Blue Underline
color_purple_u='\e[4;35m' # Purple Underline
color_cyan_u='\e[4;36m' # Cyan Underline
color_white_u='\e[4;37m' # White Underline
color_black_bg='\e[40m' # Black Background
color_red_bg='\e[41m' # Red Background
color_green_bg='\e[42m' # Green Background
color_yellow_bg='\e[43m' # Yellow Background
color_blue_bg='\e[44m' # Blue Background
color_purple_bg='\e[45m' # Purple Background
color_cyan_bg='\e[46m' # Cyan Background
color_white_bg='\e[47m' # White Background

# executed before printing of each primary prompt (PS1)
PROMPT_COMMAND='history -a'

# exclude from history
HISTIGNORE="ls:ps:history"

# add date before each history record
HISTTIMEFORMAT="%h %d %H:%M:%S "

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# history length
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize





# Prompt colours
pointerC="${color_white}"
pathC="${color_cyan}"
gitC="${color_purple}"
normalC="${color_reset}"

atC="${color_purple}"
nameC="${color_blue}"
hostC="${color_purple}"


# Red pointer for root
if [ "${UID}" -eq "0" ]; then
    pointerC="${color_red}"
fi

gitBranch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="${pathC}\w \u@\h ${gitC}\$(gitBranch) ${pointerC}\$${normalC} "













# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi