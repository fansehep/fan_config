#!/bin/bash
# quick init your desktop
# and you must have git
git clone https://github.com/fansehep/fan_config.git
sudo pacman -S - < fan_config/arch_linux_packages/my_packages.txt
cp fan_config/vim/myvim.vimrc ~/.vimrc
cp fan_config/tmux/fantmux.tmux.conf ~/.tmux.conf
cp fan_config/zsh/myzsh.zshrc ~/.zshrc

