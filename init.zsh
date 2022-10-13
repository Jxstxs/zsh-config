# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

export MANPATH="/usr/local/man:$MANPATH"
export PAGER='most'

#share commands between terminal instances or not
# unsetopt SHARE_HISTORY
setopt SHARE_HISTORY
setopt GLOB_DOTS

export EDITOR=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# Adding Paths
if [ -d "$HOME/.local/bin" ]; then PATH="$HOME/.local/bin:$PATH"; fi
# if [ -d "$SCRIPTS/bins" ]; then PATH="$SCRIPTS/bins:$PATH"; fi

# Sourcing all Stuff (Aliases, Exports, Functions)
source $HOME/.config/zsh/source/dirs.zsh
for src in $HOME/.config/zsh/source/*; do; source $src; done

if [[ ! -z "$DISPLAY" ]]; then
  if [[ -z "$TMUX" ]]; then
    choice=$(tmux list-sessions | fzf | awk -F':' '{ print $1 }')
    if [[ -z "$choice" ]]; then
      tmux new-session
    else
      tmux attach -t $choice
    fi
  fi
fi
