#!/bin/bash

#   System upgrade
sudo pacman -Syyu --noconfirm

#   AUR helper
sudo pacman -S yay --noconfirm

#   System tools
sudo pacman -S caffeine --noconfirm

#   Development dependencies
sudo pacman -S base-devel clang code go docker npm --noconfirm
yay spring-tool-suite 
sudo npm install --global @angular/cli --noconfirm

#   Virtualbox
sudo pacman -S virtualbox

#   Messaging
sudo pacman -R thunderbird --noconfirm
sudo pacman -S telegram-desktop discord --noconfirm

#   Feature for SSD
sudo systemctl enable fstrim.timer

#   Cleaning cache
yay -Sc
yay -c