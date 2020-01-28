# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Default programs:
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="brave"
export READER="zathura"
export FILE="ranger"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export KITTY_CONFIG_DIRECTORY="$HOME/.config/kitty"
export ZDOTDIR="$HOME/.config/zsh"
export GNUPGHOME="$HOME/.config/gnupg"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

# Redirect xorg logs
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
