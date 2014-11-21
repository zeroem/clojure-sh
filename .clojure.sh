but_last_arg() { echo "${@:1:$(($#-1))}"; }
to_cat() { [ ! -t 0 ] && cat - || cat $1; }
