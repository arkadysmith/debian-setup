#!/bin/bash
echo 'deb https://dl.bintray.com/dryzig/zig-debian bullseye main' | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt-get install -y zig
