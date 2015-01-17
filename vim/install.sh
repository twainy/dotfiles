#!/bin/sh
if [ ! -e $HOME/.vim_runtime ]
then
	git clone git://github.com/twainy/vimrc.git $HOME/.vim_runtime
	sh $HOME/.vim_runtime/install_awesome_vimrc.sh
fi
