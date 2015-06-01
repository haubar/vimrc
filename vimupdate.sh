#!/bin/bash

#Update vim settings from my github

VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}


git clone git://github.com/haubar/vimrc.git "$VIMHOME"

cd "$VIMHOME"

git submodule update --init

git pull VIMHOME  origin master

cd ~

ln -s .vim/.vimrc .vimrc

echo "WOW~ VIM config updated !!!"
