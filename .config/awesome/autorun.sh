#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run dos2unix
run ~/.screenlayout/awesomewm-screen.sh
