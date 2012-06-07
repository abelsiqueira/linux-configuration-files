# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

setterm -blength 0

export EDITOR="vim"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#startupdraw $LINES $COLUMNS ~/startupscript.sh
#chmod +x ~/startupscript.sh
#~/startupscript.sh
#rm -f ~/startupscript.sh

#echo "#   #  #####  #      #       ###  "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#####  #####  #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #####  #####  #####   ###  "
#echo "                           "
#echo " ###   ####   #####  #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  #   #  #      #     "
#echo "#####  ####   #####  #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  ####   #####  ##### "
#echo "                           "

date
PS1='\e[0;34m[\t]\e[0;31m\u@\h:\e[0;33m\w\$\e[0;32m '
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
