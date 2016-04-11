#!/bin/bash

#Update vim settings from my github

VIMHOME=~/.vim


cd "$VIMHOME"

git submodule update --init

git pull origin master

echo "WOW~ VIM config updated !!!"


cd ~

ln -s $VIMHOME/.vimrc .vimrc

echo "WOW~ VIM config Link success !!!"
