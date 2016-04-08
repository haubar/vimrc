#!/bin/bash

#Installs vim from my github

VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME" ] && die "$VIMHOME already exists."

[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone git://github.com/haubar/vimrc.git "$VIMHOME"

cd "$VIMHOME"

git submodule update --init

git pull VIMHOME  origin master

cd ~

ln -s .vim/.vimrc .vimrc
ln -s .vim/.vimrcs/map-vimrc vimrcs/map-vimrc
ln -s .vim/.vimrcs/tool-vimrc vimrcs/tool-vimrc

echo "VIM config installed !!!"




