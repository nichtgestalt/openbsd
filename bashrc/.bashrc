# _               _              
#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|

# Setting Variables
Editor=nvim

# Prompts
PS1='\[\e[0;38;5;248m\][\[\e[0;34m\] \w \[\e[0;38;5;248m\]] \[\e[0;97m\]$\[\e[0m\] '

# vi mode
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Alias
alias f='figlet'
alias v='$Editor'
alias vi='$Editor'
alias de='setxkbmap de'
alias bac='$Editor $HOME/.bashrc'
alias vic='$Editor $HOME/.config/nvim/init.vim'
alias rme='$Editor $HOME/Dokumente/OpenBSD.md'
alias term='$Editor $HOME/.config/alacritty/alacritty.yml'
alias marathon='marathon.sh'
alias fontreset='fc-cache -f -v'

alias wm='$Editor $HOME/.config/bspwm/bspwmrc'
alias pic='$Editor $HOME/.config/picom/picom.conf'
alias bar='$Editor $HOME/.config/polybar/config.ini'
alias keys='$Editor $HOME/.config/sxhkd/sxhkdrc'
alias bard='$Editor $HOME/.config/polybar/config-dwmlike.ini'
alias rasi='$Editor $HOME/.config/rofi/config.rasi'

# Directories
alias scripts='cd $HOME/.local/share/scripts && ls'

# Keybindings
bind '"\C-h": "htop\r"'
bind '"\C-n": "neofetch\r"'
bind '"\C-e": "$Editor\r"'
bind '"\C-r": "clear\r colorscript -r\r"'
bind '"\C-g": "$Editor ~/Dokumente/notes.txt\r"'

# add Neovide
PATH=$PATH:~/.config/neovide/target/release/
PATH=$PATH:~/.cargo/bin/
PATH=$PATH:~/.local/share/scripts/
#colorscript -e zwaves
#setxkbmap de neo
