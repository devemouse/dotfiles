echo "local profile"

alias "push"="git push origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pul"="git pull origin $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
alias "pull"="pul"

CG7PATH=/c/Projects/AECU/CoreDev/E2061006_02/07_SW/uC_1

