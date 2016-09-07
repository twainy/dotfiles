#!/bin/sh
cd `dirname $0`
rm -rf $HOME/.tmuxinator
ln -s $DOTFILES_ROOT/tmux/tmuxinator $HOME/.tmuxinator
ln -s $DOTFILES_ROOT/tmux/tmux.conf $HOME/.tmux.con
