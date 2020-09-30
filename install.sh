#!/usr/bin/env bash
#install dotfiles to directory from where this script was executed (e.g. usually  $HOME)

DOTFILEDIR=$(dirname "$0")
if [ "." == "${DOTFILEDIR}" ]; then
	echo refusing to execute install script in source directory
	exit
fi


echo "linking vim stuff to $DOTFILEDIR"

#vim stuff
if [ -f .vimrc ]; then
    echo "backup old .vimrc in vimbackup"
	mkdir -p vimbackup
    mv  .vimrc vimbackup/
fi

if [ -d ./.vim ]; then
    echo "backup old .vim in vimbackup"
    mkdir -p vimbackup
    mv  .vim vimbackup/
fi

ln -sf $DOTFILEDIR/.vim
ln -sf $DOTFILEDIR/.vimrc

#tmux config
ln -sf $DOTFILEDIR/.tmux.conf

#make sure that the plugins are loaded
vim -c 'PlugInstall!|q|q'

#also compile ymc with support for javascript and C/C++ 
cd .vim/plugged/YouCompleteMe
python3 ./install.py --ts-completer --clangd-completer
cd -
