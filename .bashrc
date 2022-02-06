#!/bin/bash

export PATH=$PATH:~/.local/bin

# Fish
 if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
    exec fish
fi

