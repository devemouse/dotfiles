echo "local profile"

alias "push"="git push origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pul"="git pull origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pull"="pul"
alias less='less -r'
# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color --show-control-chars'
alias ll='ls -l'

if [ -e "${HOME}/.bin/.git-completion.bash" ] ; then 
   echo Git completion enabled
   . ~/.bin/.git-completion.bash
fi

PS1='\[\033]0;$MSYSTEM:\w\007
\033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\]
$ '

if [ -e "${HOME}/.bin/.work" ] ; then 
   echo applyink work settings
   . ~/.bin/.work
fi

