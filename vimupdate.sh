#!/bin/bash

#Update vim settings from my github

VIMHOME=~/.vim


cd "$VIMHOME"

git submodule update --init

git pull origin master

echo "WOW~ VIM config updated !!!"


cd ~

ln -s $VIMHOME/.vimrc .vimrc
ln -s $VIMHOME/vimrcs/map-vimrc vimrcs/map-vimrc
ln -s $VIMHOME/vimrcs/tool-vimrc vimrcs/tool-vimrc

echo "WOW~ VIM config Link success !!!"
