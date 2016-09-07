#!/bin/sh
cd `dirname $0`
rm -rf $HOME/.tmuxinator
ln -s tmuxinator $HOME/.tmuxinator
mv tmux.conf $HOME/.tmux.conf
