#!/usr/bin/env bash
#install dotfiles to directory from where this script was executed (e.g. usually  $HOME)

DOTFILEDIR=$(dirname "$0")
echo "linking vim stuff to $DOTFILEDIR"

#vim stuff
if [ -f .vimrc ]; then
    mkdir -p vimbackup
    mv  .vimrc vimbackup/
fi

if [ -d .vim ]; then
    mkdir -p vimbackup
    mv  .vim vimbackup/
fi

ln -s $DOTFILEDIR/.vim
ln -s $DOTFILEDIR/.vimrc
#make sure that the plugins are loaded
vim -c 'PlugInstall|q|q'

