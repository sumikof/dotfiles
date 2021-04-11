#!/bin/bash
if [ ! -d ~/dotfiles ];then
  SCRIPT_DIR=$(cd $(dirname $0); pwd) 
  cp -R $SCRIPT_DIR ~/
fi
mkdir -p ~/.zsh
git clone git://github.com/zsh-users/zsh-completions.git ~/.zsh/
ln -nfs ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -nfs ~/dotfiles/_zshrc ~/.zshrc
ln -nfs ~/dotfiles/_bashrc ~/.bashrc
ln -nfs ~/dotfiles/_vimrc ~/.vimrc
