#!/bin/bash

alias pp="pushd > /dev/null"
alias o="popd > /dev/null"
p() {
     if [[ -z "$1" ]]; then
          dirs -v;
     else
          case "$1" in
               [0-9] ) p +$1 ;;
               -* ) adj=$((-1*$1)); if [[ adj == 0 ]]; then popd; else popd -n +adj; fi > /dev/null; dirs -v ;;
               * ) pushd "$1" > /dev/null ;;
          esac
     fi
}
alias p0=p\ 0
alias p1=p\ 1
alias p2=p\ 2
alias p3=p\ 3
alias p4=p\ 4
alias p5=p\ 5
alias p6=p\ 6

function gvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }
