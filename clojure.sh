
alias first="head -n 1"
alias second="head -n 2 | tail -n 1"
alias rest="tail -n +1"
alias butlast="head -n -1"
alias apply="xargs $@"

take () { cat - | head -n -$1; }
nth () { cat - | head -n $1 | tail -n 1; }
filter () { cat - | xargs -L1 $SHELL -c "$@ && echo \$1" -- ; }
remove () { cat - | xargs -L1 $SHELL -c "$@ || echo \$1" -- ; }
map () { cat - | xargs -L1 $SHELL -c "$@" -- ; }
