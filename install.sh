#!/bin/bash
sudo pacman -Syyyu && sudo pacman -S git libx11 libxinerama libxft libxext libxrender ttf-hack ttf-joypixels
mkdir -p ~/Derleme && cd ~/Derleme
git clone https://github.com/siduck76/st.git
cd st
sudo make install
cd ..
git clone https://www.gitlab.com/dwt1/dmenu-distrotube.git
cd dmenu-distrotube
sudo make install
cd ..
git clone https://github.com/usdogu/dwm-dots.git
cd dwm-dots
sudo make install
