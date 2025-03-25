#! /bin/sh
# This script is used to create basic setup for Arch with bspwm 

sudo pacman -S yay
yay -S picom nitrogen rofi dunst polybar alacritty thunar firefox flameshot alsa-lib alsa-utils pulseaudio pulseaudio-alsa pavucontrol xorg xorg-xinit xorg-server xorg-xrandr xorg-xsetroot xorg-xset

# Copying the config files from current repo to the .config directory
sudo cp -r config/* ~/.config/
