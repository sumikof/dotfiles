#!/bin/bash
if [ ! -d ~/dotfiles ];then
  SCRIPT_DIR=$(cd $(dirname $0); pwd) 
  cp -R $SCRIPT_DIR ~/
fi
mkdir -p ~/.zsh
echo "apt install zsh"
sudo apt install zsh -y
echo "install pyenv"
curl https://pyenv.run | bash

echo "sudo locale-gen ja_JP.UTF-8"
sudo locale-gen ja_JP.UTF-8
echo "sudo update-locale LANG=ja_JP.UTF-8"
sudo update-locale LANG=ja_JP.UTF-8

git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/
ln -nfs ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -nfs ~/dotfiles/_zshrc ~/.zshrc
ln -nfs ~/dotfiles/_bashrc ~/.bashrc
#ln -nfs ~/dotfiles/_vimrc ~/.vimrc
