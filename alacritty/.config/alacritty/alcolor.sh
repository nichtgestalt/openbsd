#!/bin/bash
# _ __   __ _ 
#| '_ \ / _` |	Github
#| | | | (_| |	https://github.com/nichtgestalt/
#|_| |_|\__, |
#       |___/ 

config="$HOME/.config/alacritty/alacritty.yml"
nvimrc="$HOME/.config/nvim/init.vim"

declare -a options=(
"Nord"
"Breeze"
"DoomOne"
"Solarized Dark"
"One Dark"
"Google Dark"
"Oceanic Next"
"Tokyo Night"
"Tokyo Night Storm"
"Catpuccin"
"Gruvbox"
"Cyberpunk"
"Dracula"
"Tango"
"Bunsen Lab"
"kasugano"
"jwl-dark"
"nudge"
"Traditional"
"nord-dark"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 15 -p 'Schemes')

case $choice in
	'Nord')
		sed -i '/^colorscheme /c\colorscheme nord' $nvimrc
		sed -i '/^colors:/c\colors: *Nord' $config ;;
	'Oceanic Next')
		sed -i '/^colorscheme /c\colorscheme OceanicNext' $nvimrc
		sed -i '/^colors:/c\colors: *OceanicNext' $config ;;
	'Tokyo Night')
		sed -i '/^colorscheme /c\colorscheme tokyonight' $nvimrc
		sed -i '/^colors:/c\colors: *tokyo-night' $config ;;
	'Tokyo Night Storm')
		sed -i '/^colorscheme /c\colorscheme tokyonight-storm' $nvimrc
		sed -i '/^colors:/c\colors: *tokyo-night-storm' $config ;;
	'Breeze')
		sed -i '/^colorscheme /c\colorscheme breezy' $nvimrc
		sed -i '/^colors:/c\colors: *breeze' $config ;;
	'One Dark')
		sed -i '/^colorscheme /c\colorscheme onedark' $nvimrc
		sed -i '/^colors:/c\colors: *one-dark' $config ;;
	'Google Dark')
		sed -i '/^colorscheme /c\colorscheme google-dark' $nvimrc
		sed -i '/^colors:/c\colors: *google-dark' $config ;;
	'Catpuccin')
		sed -i '/^colorscheme /c\colorscheme catppuccin' $nvimrc
		sed -i '/^colors:/c\colors: *catpuccin' $config ;;
	'Gruvbox')
		sed -i '/^colorscheme /c\colorscheme gruvbox' $nvimrc
		sed -i '/^colors:/c\colors: *gruvbox' $config ;;
	'DoomOne')
		sed -i '/^colorscheme /c\colorscheme doom-one' $nvimrc
		sed -i '/^colors:/c\colors: *DoomOne' $config ;;
	'Solarized Dark')
		sed -i '/^colorscheme /c\colorscheme NeoSolarized' $nvimrc
		sed -i '/^colors:/c\colors: *solarized-dark' $config ;;
	'Dracula')
		sed -i '/^colors:/c\colors: *dracula' $config ;;
	'Cyberpunk')
		sed -i '/^colorscheme /c\colorscheme cyberpunk' $nvimrc
		sed -i '/^colors:/c\colors: *cyberpunk' $config ;;
	'Traditional')
		sed -i '/^colorscheme /c\colorscheme vscode' $nvimrc
		sed -i '/^colors:/c\colors: *traditional' $config ;;
	'Tango')
		sed -i '/^colorscheme /c\colorscheme tango' $nvimrc
		sed -i '/^colors:/c\colors: *tango' $config ;;
	'kasugano')
		sed -i '/^colors:/c\colors: *kasugano' $config ;;
	'jwl-dark')
		sed -i '/^colors:/c\colors: *jwl-dark' $config ;;
	'nudge')
		sed -i '/^colors:/c\colors: *nudge' $config ;;
	'Bunsen Lab')
		sed -i '/^colorscheme /c\colorscheme bunsen-lab' $nvimrc
		sed -i '/^colors:/c\colors: *bunsen-lab' $config ;;
	'nord-dark')
		sed -i '/^colors:/c\colors: *nord-dark' $config ;;
esac
