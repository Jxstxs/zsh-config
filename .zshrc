# important exports
export ZSH=$HOME/.local/src/oh-my-zsh

# omz config exports
export ZSH_COMPDUMP="${TMP}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# Loads Themes
ran_themes=()
while IFS= read -r line; do ran_themes+=(""$line""); done < $HOME/.config/zsh/zsh-themes
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=($ran_themes)

# Loads Plugins
plugin=()
while IFS= read -r line; do plugin+=("$line"); done < $HOME/.config/zsh/zsh-plugins
plugins=($plugin)

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export TERM="screen-256color"

# Loads oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Loads my Zsh Exports, Aliases and Functions
source $HOME/.config/zsh/init.zsh
