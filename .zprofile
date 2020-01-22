# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs:
export EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="google-chrome-stable"
export READER="zathura"
export FILE="ranger"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export NOTMUCH_CONFIG="$HOME/.config/notmuch/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"
export GNUPGHOME="$HOME/.config/gnupg"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

# Redirect xorg logs
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
