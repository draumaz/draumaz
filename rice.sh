#!/bin/bash
# Personal rice

dep_get(){
	pacman -S imagemagick curl --noconfirm
}

wallpaper_get(){
	mkdir /home/samuel/Images
	curl https://papers.co/wallpaper/papers.co-og13-nature-tree-tall-wood-25-wallpaper.jpg > /home/samuel/Images/tree.jpg
	convert /home/samuel/Images/tree.jpg /home/samuel/Images/tree.png
	rm /home/samuel/Images/tree.jpg
}

workspace_setup(){
	pacman -S xorg xorg-xinit i3 i3status i3lock dmenu feh pipewire pipewire-pulse git --noconfirm
	mkdir /home/samuel/.config
	mkdir /home/samuel/.config/i3
	mkdir /home/samuel/.config/i3status
	curl https://raw.githubusercontent.com/draumaz/draumaz/main/i3_config > /home/samuel/.config/i3/config
	curl https://raw.githubusercontent.com/draumaz/draumaz/main/i3status_config > /home/samuel/.config/i3status/config
	echo "feh --bg-scale /home/samuel/Images/tree.png & exec i3" > /home/samuel/.xinitrc
}

dep_get
workspace_setup
wallpaper_get
