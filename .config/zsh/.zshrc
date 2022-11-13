# system info
# ufetch

# history in cache directory
HISTFILE=~/.cache/zsh/history
HISTSIZE=1024
SAVEHIST=1024

# enable colors and change prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# basic  auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)

# enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

eval "$(starship init zsh)"
