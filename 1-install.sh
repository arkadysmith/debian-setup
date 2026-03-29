#!/bin/bash
bash ~/debian-setup/install_scripts/debian-dependencies.sh &
bash ~/debian-setup/install_scripts/common.sh &
bash ~/debian-setup/install_scripts/oxwm.sh &
# sudo systemctl enable NetworkManager &
sudo sysvinit.enable NetworkManager *
touch ~/.xinitrc &
echo "picom &" >> ~/.xinitrc &
echo "xwallpaper --zoom ~/debian-conf/wallpaper.jpg &" >> ~/.xinitrc &
echo "exec xrandr -s 1920x1080;" >> ~/.xinitrc &
echo "exec oxwm;" >> ~/.xinitrc &

