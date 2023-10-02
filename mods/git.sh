#!/usr/bin/env bash

GITPATH="/usr/bin/git"

magouille () {
  if [ $3 = $2 ]; then
    shift 3
    $GITPATH $1 $@
    r=1
  elif [ $3 = $1 ]; then
    echo "Git: \"git $1\" is deprecated, please use \"git $2\" as a replacement"
    r=1
  fi
}

gitous () {
  r=0
  magouille add ass $@
  magouille commit cummit $@
  magouille push flush $@
  magouille status tusuce $@

  if [ $r -eq 0 ]; then
    $GITPATH $@
  fi
}

alias git=gitous
