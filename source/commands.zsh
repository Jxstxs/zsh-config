# alias add_theme="echo "$RANDOM_THEME" >> $ZSHD/zsh-themes"

function pacsi() {
    pkg_inst=$(pacman -Slq | fzf --preview "pacman -Si {}" -m | tr "\n" " " | xargs)
    echo "$pkg_inst" | sudo pacman -S -
}

alias srcall="source $HOME/.zshrc"
alias update_xres="xrdb -merge ~/.Xresources; xsetroot -name 'fsignal:reloadXresources'; pkill -USR1 st"
