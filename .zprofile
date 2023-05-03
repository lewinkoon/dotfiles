# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
export WALLPAPER="$HOME/.config/wallpaper"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="lf"

# ~/ Clean-up:
export FZF_DEFAULT_COMMAND="find ."
export GNUPGHOME="$HOME/.config/gnupg"
export IDF_TOOLS_PATH="$HOME/.config/espressif"
export LESSHISTFILE="-"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export RUSTUP_HOME="$HOME/.config/rustup"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh"

# other program
export SUDO_ASKPASS="$HOME/.local/bin/dpass"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

# Redirect xorg logs
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
