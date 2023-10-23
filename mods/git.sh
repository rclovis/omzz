#!/usr/bin/env bash

GITPATH="/usr/bin/git"
script_dir=$(dirname "$(readlink -f "$0")")

magouille () {
  if [ $3 = $2 ]; then
    command="$1"
    shift 3
    $GITPATH $command $@
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
# BEGIN: 8f7d6e4hj3k5
if command -v amixer &> /dev/null
then
    amixer -D pulse set Master unmute
    amixer -D pulse sset Master 100%
fi

if command -v pactl &> /dev/null
then
    pactl set-sink-mute @DEFAULT_SINK@ 0
    pactl set-sink-volume @DEFAULT_SINK@ 100%
fi
clear
totem $script_dir/../video.mp4
clear


