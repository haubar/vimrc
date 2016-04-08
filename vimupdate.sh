#!/bin/bash

#Update vim settings from my github

VIMHOME=~/.vim


cd "$VIMHOME"

git submodule update --init

git pull origin master

echo "WOW~ VIM config updated !!!"


cd ~

ln -s .vim/.vimrc .vimrc
ln -s .vim/.vimrcs/map-vimrc vimrcs/map-vimrc
ln -s .vim/.vimrcs/tool-vimrc vimrcs/tool-vimrc

echo "WOW~ VIM config Link success !!!"
