#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run dos2unix
run feh --bg-scale ~/Imagens/alena-aenami-night-1k-nord.png

