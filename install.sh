#!/bin/bash
# install deps
sudo pacman -Syyyu && sudo pacman -S git libx11 libxinerama libxft libxext libxrender ttf-hack ttf-joypixels llvm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# create necessary dirs
mkdir -p ~/Derleme && cd ~/Derleme
mkdir -p ~/bin
git clone https://github.com/siduck76/st.git
cd st
sudo make install
cd ..

git clone https://www.gitlab.com/dwt1/dmenu-distrotube.git
cd dmenu-distrotube
sudo make install
cd ..

git clone https://github.com/usdogu/rootblocks.git
cd rootblocks
cargo build --release
cp target/release/rootblocks ~/bin/rootblocks

git clone https://github.com/usdogu/dwm-dots.git
cd dwm-dots
sudo make install

echo "Finished"
cd ~
