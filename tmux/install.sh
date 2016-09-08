#!/bin/sh
pwd=`realpath $(dirname $0)`
cd $pwd
rm $HOME/.tmuxinator
ln -s $pwd/tmuxinator $HOME/.tmuxinator
rm $HOME/.tmux.conf
ln -s $pwd/tmux.conf $HOME/.tmux.conf
