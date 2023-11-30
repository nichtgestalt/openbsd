#!/bin/bash
# _ __   __ _ 
#| '_ \ / _` |	Github:
#| | | | (_| |	https://github.com/nichtgestalt/
#|_| |_|\__, |
#       |___/ 

# set variables of config files
alalrc="$HOME/.config/alacritty/alacritty.yml"										# Alactitty
pbarrc="$HOME/.config/polybar/config.ini"										# Polybar 
rofirc="$HOME/.config/rofi/config.rasi"											# Rofi
bspwrc="$HOME/.config/bspwm/bspwmrc"											# BSPWM
nvimrc="$HOME/.config/nvim/init.vim"											# NeoVim


# Declare color schemes I configured
declare -a options=(
"Doom-One"
"Solarized"
"Goole-Dark"														# Work in progress
"Breeze"
"Gruvbox"														# Work in progress
"Dracula"														# Work in progress
"Nord"															# Work in progress
"Tango"															# Work in progress
)


# set up Rofi for creating a nice prompt
choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 15 -p 'Themes')


case $choice in
	'Doom-One')
		sed -i '/^colors:/c\colors: *DoomOne' $alalrc &&							# Alacritty
		sed -i '/^include-file/c\include-file = ~/.config/polybar/doom-one.ini' $pbarrc &&			# Polybar
		sed -i '/^@theme/c\@theme "~/.config/rofi/doom-one.rasi"' $rofirc &&					# Rofi
		sed -i '/^bspc config normal_border_color/c\bspc config normal_border_color     "#23272e"' $bspwrc &&	# unfocosed
		sed -i '/^bspc config focused_border_color/c\bspc config normal_focused_color   "#efefef"' $bspwrc &&	# focused
		sed -i '/^bspc config presel_feedback_color/c\bspc config presel_feedback_color "#3f444a"' $bspwrc &&	# preselection
		sed -i '/^colorscheme/c\colorscheme doom-one' $nvimrc &&						# Neovim
		bspc wm -r &&												# Restart
		nitrogen --set-zoom-fill $HOME/.config/bspwm/doom-one-wallpaper.jpg ;;					# Wallpaper
	'Solarized')
		sed -i '/^colors:/c\colors: *solarized-dark' $alalrc &&							# Alacritty
		sed -i '/^include-file/c\include-file = ~/.config/polybar/solarized-dark.ini' $pbarrc &&		# Polybar
		sed -i '/^@theme/c\@theme "~/.config/rofi/solarized-dark.rasi"' $rofirc &&				# Rofi
		sed -i '/^bspc config normal_border_color/c\bspc config normal_border_color     "#073642"' $bspwrc &&	# unfocosed
		sed -i '/^bspc config focused_border_color/c\bspc config normal_focused_color   "#657b83"' $bspwrc &&	# focused
		sed -i '/^bspc config presel_feedback_color/c\bspc config presel_feedback_color "#002b36"' $bspwrc &&	# preselection
		sed -i '/^colorscheme/c\colorscheme NeoSolarized' $nvimrc &&						# Neovim
		bspc wm -r &&												# Restart
		nitrogen --set-zoom-fill $HOME/.config/bspwm/solarized-dark-wallpaper.jpg ;;				# Wallpaper
	'Goole-Dark')
		sed -i '/^colors:/c\colors: *google-dark' $alalrc &&							# Alacritty
		sed -i '/^include-file/c\include-file = ~/.config/polybar/google-dark.ini' $pbarrc &&			# Polybar
		sed -i '/^@theme/c\@theme "~/.config/rofi/google-dark.rasi"' $rofirc &&					# Rofi
		sed -i '/^bspc config normal_border_color/c\bspc config normal_border_color     "#23272e"' $bspwrc &&	# unfocosed
		sed -i '/^bspc config focused_border_color/c\bspc config normal_focused_color   "#efefef"' $bspwrc &&	# focused
		sed -i '/^bspc config presel_feedback_color/c\bspc config presel_feedback_color "#3f444a"' $bspwrc &&	# preselection
		sed -i '/^colorscheme/c\colorscheme google-dark' $nvimrc &&						# Neovim
		bspc wm -r &&												# Restart
		nitrogen --set-zoom-fill $HOME/.config/bspwm/google-dark-wallpaper.jpeg ;;				# Wallpaper
	'Breeze')
		sed -i '/^colors:/c\colors: *breeze' $alalrc &&								# Alacritty
		sed -i '/^include-file/c\include-file = ~/.config/polybar/breeze.ini' $pbarrc &&			# Polybar
		sed -i '/^@theme/c\@theme "~/.config/rofi/breeze.rasi"' $rofirc &&					# Rofi
		sed -i '/^bspc config normal_border_color/c\bspc config normal_border_color     "#23272e"' $bspwrc &&	# unfocosed
		sed -i '/^bspc config focused_border_color/c\bspc config normal_focused_color   "#efefef"' $bspwrc &&	# focused
		sed -i '/^bspc config presel_feedback_color/c\bspc config presel_feedback_color "#3f444a"' $bspwrc &&	# preselection
		sed -i '/^colorscheme/c\colorscheme breezy' $nvimrc &&							# Neovim
		bspc wm -r &&												# Restart
		nitrogen --set-zoom-fill $HOME/.config/bspwm/google-dark-wallpaper.jpeg ;;				# Wallpaper
	'Gruvbox')
		sed -i '/^colors:/c\colors: *gruvbox' $alalrc &&							# Alacritty
		sed -i '/^include-file/c\include-file = ~/.config/polybar/gruvbox.ini' $pbarrc &&			# Polybar
		#sed -i '/^@theme/c\@theme "~/.config/rofi/gruvbox.rasi"' $rofirc &&					# Rofi
		#sed -i '/^bspc config normal_border_color/c\bspc config normal_border_color     "#23272e"' $bspwrc &&	# unfocosed
		#sed -i '/^bspc config focused_border_color/c\bspc config normal_focused_color   "#efefef"' $bspwrc &&	# focused
		#sed -i '/^bspc config presel_feedback_color/c\bspc config presel_feedback_color "#3f444a"' $bspwrc &&	# preselection
		#sed -i '/^colorscheme/c\colorscheme gruvbox' $nvimrc &&						# Neovim
		bspc wm -r ;;												# Restart
		#nitrogen --set-zoom-fill $HOME/.config/bspwm/google-dark-wallpaper.jpeg ;;				# Wallpaper
esac
