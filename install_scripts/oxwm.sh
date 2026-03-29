#!/bin/bash
cd ~/ &&
git clone https://github.com/tonybanters/oxwm &&
cd ~/oxwm &&
sudo apt-get install -y liblua5.4-dev libx11-dev libxinerama-dev libxft-dev libfontconfig-dev &&
sudo zig build -Doptimize=ReleaseSmall --prefix /usr &&
oxwm --init
