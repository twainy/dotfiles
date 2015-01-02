#!/bin/sh
if ! [ -e $HOME/.tmuxinator ]
then
	ln -s tmuxinator $HOME/.tmuxinator
fi
