# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/bash/aliases ]; then
	. ~/bash/aliases
fi

if [ -f ~/bash/functions ]; then
	. ~/bash/functions
fi

# Adding personal bin directory
if [ -d ${HOME}/.bin ]||[ -h ${HOME}/.bin ]; then
  # if the ~/.bin dir exists, add it to the path
  # we're putting it at the begining of the path
  # because we want the executables in that dir
  # to take precedence of system executables
  export PATH=${HOME}/.bin:${PATH}
fi

export PATH=/var/lib/gems/1.8/bin:$PATH

# If not running interactively, don't do anything
case "$-" in
*i*)	;;
*)	return;;
esac

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
   PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(prompt_char) '
else
   PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(prompt_char) '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ "$(__git_ps1)" == "" ] ; then
   echo git ps1 dows not exist
   if [ -e "${HOME}/.bin/git-completion.bash" ] ; then 
      echo Enabling git completion...
      . ~/.bin/.git-completion.bash
   fi
fi

if [ -e "${HOME}/.bin/.work.bash" ] ; then 
   echo Applying work settings... 
   . ~/.bin/.work.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
# Bash Directory Bookmarks
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'
alias m4='alias g4="cd `pwd`"'
alias m5='alias g5="cd `pwd`"'
alias m6='alias g6="cd `pwd`"'
alias m7='alias g7="cd `pwd`"'
alias m8='alias g8="cd `pwd`"'
alias m9='alias g9="cd `pwd`"'
alias mdump='alias|grep -e "alias g[0-9]"|grep -v "alias m" > ~/.bookmarks'
alias lma='alias | grep -e "alias g[0-9]"|grep -v "alias m"|sed "s/alias //"'
touch ~/.bookmarks
source ~/.bookmarks

alias df='df -h -x tmpfs -x devtmpfs -x debugfs'

#PS1=' \[\033[01;41;37m\]${?#0}\[\033[00m\] \[\033]0;$MSYSTEM:\w\007
#\033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\]  
#$ '

#export MAKEFLAGS=j4
export EDITOR=vim


if [ -f ~/bash/bash_ps1 ]; then
	. ~/bash/bash_ps1
fi

