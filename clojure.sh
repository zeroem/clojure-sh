
to-cat () { [ -z "$1" ] && cat - || cat $1; }

first () { to-cat "$2" | head -n 1; }
second () { to-cat "$2" | head -n 2 | tail -n 1; }
rest () { to-cat "$2" | tail -n +1; }
butlast () { to-cat "$2" | head -n -1; }

# needs to be updated to take intervening args
apply () { to-cat "$2" | xargs $1; }

take () { to-cat "$2" | head -n $1; }
take-last () { to-cat "$2" | tail -n $1; }
drop () { to-cat "$2" | tail -n +$(echo $1 + 1 | bc); }
nth () { to-cat "$2" | head -n $1 | tail -n 1; }
filter () { to-cat "$2" | xargs -L1 $SHELL -c "$1 && echo \$1" -- ; }
remove () { to-cat "$2" | xargs -L1 $SHELL -c "$1 || echo \$1" -- ; }
map () { to-cat "$2" | xargs -L1 $SHELL -c "$1" -- ; }

take-while () { to-cat "$2" | while read l; do $SHELL -c "$1" -- $l && echo $l || break; done; }
drop-while () {
  to-cat "$2" | while read l; do
    if [ -z "$FOUND" ]
    then
      echo $l
    elif ! $SHELL -c "$1" -- $l
    then
      FOUND=1
      echo $l
    fi;
  done
}
