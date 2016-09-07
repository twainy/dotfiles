#!/bin/sh

echo "y" | sudo apt-get install zsh

if [ ! -e $HOME/.oh-my-zsh ]
then
	echo "  Installing oh-my-zsh for you."
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
