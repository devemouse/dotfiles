echo "local profile"

alias "push"="git push origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pul"="git pull origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pull"="pul"

if [ -e "git-completion.bash" ] ; then 
. git-completion.bash
fi

PS1='\[\033]0;$MSYSTEM:\w\007
\033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\]
$ '

CG7PATH=/c/Projects/AECU/CoreDev/E2061006_02/07_SW/uC_1

