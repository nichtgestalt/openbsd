#!/bin/bash
# _ __   __ _ 
#| '_ \ / _` |	Github
#| | | | (_| |	https://github.com/nichtgestalt/
#|_| |_|\__, |
#       |___/ 

config="$HOME/.config/alacritty/alacritty.yml"

declare -a options=(
"Monospace"
"Hack"
"Roboto Mono"
"JetBrains Mono"
"Fira Code"
"Iosevka"
"Mononoki"
"Ubuntu Mono"
"Monofur"
"Code New Roman"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 15 -p 'Fonts:')

case $choice in
	'Monospace')
		sed -i '/size:/c\  size: 14' $config 
		sed -i '/family:/c\    family: monospace' $config ;; 
	'Hack')
		sed -i '/size:/c\  size: 14' $config 
		sed -i '/family:/c\    family: Hack Nerd Font' $config ;; 
	'Roboto Mono')
		sed -i '/size:/c\  size: 14.5' $config 
		sed -i '/family:/c\    family: RobotoMono Nerd Font' $config ;; 
	'JetBrains Mono')
		sed -i '/size:/c\  size: 14.0' $config 
		sed -i '/family:/c\    family: JetBrainsMono Nerd Font' $config ;;
	'Fira Code')
		sed -i '/size:/c\  size: 14.5' $config 
		sed -i '/family:/c\    family: FiraCode Nerd Font' $config ;; 
	'Iosevka')
		sed -i '/size:/c\  size: 15.5' $config 
		sed -i '/family:/c\    family: Iosevka Nerd FonZ' $config ;;
	'Mononoki')
		sed -i '/size:/c\  size: 15.3' $config 
		sed -i '/family:/c\    family: mononoki Nerd Font' $config ;;
	'Ubuntu Mono')
		sed -i '/size:/c\  size: 16.3' $config 
		sed -i '/family:/c\    family: UbuntuMono Nerd Font' $config ;; 
	'Monofur')
		sed -i '/size:/c\  size: 16.3' $config 
		sed -i '/family:/c\    family: Monofur Nerd Font' $config ;; 
	'Code New Roman')
		sed -i '/size:/c\  size: 15.0' $config 
		sed -i '/family:/c\    family: CodeNewRoman Nerd Font' $config ;; 
esac
