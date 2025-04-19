#! /bin/sh
# This script is used to create basic setup for Arch with bspwm 

# Dirs
DIR=`pwd`
FDIR="$HOME/.local/share/fonts"


yay -S picom nitrogen rofi dunst polybar ghostty viu toipe thunar firefox flameshot alsa-lib alsa-utils pulseaudio pulseaudio-alsa pavucontrol xorg xorg-xinit xorg-server xorg-xrandr xorg-xsetroot xorg-xset wmname

# Copying the config files from current repo to the .config dir
cp -r "$(pwd)/.config" ~/
cp -r "$(pwd)/wallpaper.jpg" ~/Pictures/

# Setting wallpaper
nitrogen Pictures/

# Installing fonts
[[ ! -d "$FDIR" ]]&& mkdir -p "$FDIR"
cp -rf $DIR/fonts/* "$FDIR"


