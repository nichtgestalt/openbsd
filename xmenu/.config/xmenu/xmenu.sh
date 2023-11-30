#!/bin/sh

# Die jeweiligen Einträge im Config-file werden mit TABs geteilt, Nicht mit Leerzeichen!
# [IMG:/Pfad/zu/image.png (optional)] - [Name des Eitrages im Menü] - [Befehl]
# Für eine Zwischenlinie wird eine Zeile frei gelassen

#NeoVim	bspc rule -a Alacritty -o state=floating && alacritty -e nvim

xmenu <<EOF | sh &
Alacritty	bspc rule -a Alacritty -o state=floating && alacritty -e bash
Browser 	$BROWSER
Files   	bspc rule -a Thunar -o state=floating && thunar

Erschaffe
	Gimp	gimp
	NeoVide	bspc rule -a neovide -o state=floating && neovide
	Geany	geany
	Office
		Writer	lowriter
		Calc	localc
Erscheinungsbild
	Themes	lxappearance
	Wallpaper	nitrogen
	Polybar 	bspc rule -a neovide -o state=floating && neovide ~/.config/polybar/config
	Xmenu 	 	bspc rule -a neovide -o state=floating && neovide ~/.config/xmenu/xmenu.sh
	Random wlpr	nitrogen --set-zoom-fill --random ~/pics/
Set up
	Pulsemixer	alacritty -e pulsemixer
	Alacritty	alacritty -e nvim ~/.config/alacritty/alacritty.yml
	OBS-Studio	flatpak run com.obsproject.Studio
Hilfe
	Gentoo	zathura ~/docs/readme/Gentoo.pdf
	Groff 	zathura ~/docs/readme/Groff.pdf
	Solarized	zathura ~/docs/readme/Solarized.pdf
	Neo 2 L1	ristretto ~/docs/readme/neo2-layer1.png

Reload	bspc wm -r
Exit	bspc quit
EOF
