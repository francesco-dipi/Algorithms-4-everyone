#!/bin/bash

# read numbers if not passed
if [ $# -lt 1 ]; then
  echo "Insert numbers: "
  read NUMBERS
  set $NUMBERS
fi

quicksort() {

  local left
  local c
  local right

  if  [ $# -lt 2 ]; then
    echo -n "$@"
  else
    local pivot=$1

    for x in $@; do
      if [ $x -lt $pivot ]; then
        left="$left $x"
      elif [ $x -gt $pivot ]; then
        right="$right $x"
      else
        c="$c $x"
      fi

    done
    echo "`quicksort $left`$c `quicksort $right`"

  fi

}

quicksort $@

