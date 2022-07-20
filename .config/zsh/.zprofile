##
# Environment variables
##

# Default programs
export BROWSER="chromium"
export EDITOR="nvim"
export TERMINAL="foot"

# Setting the XDG base directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/share:$HOME/.local/share:/var/lib/flatpak/exports/share:$XDG_DATA_HOME/flatpak/exports/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Wayland — General
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway

# Wayland — Fixes
export CLUTTER_BACKEND=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export SDL_VIDEODRIVER=wayland

# Wayland — NVIDIA
if [ -e /dev/nvidia0 ]; then
	export __GL_GSYNC_ALLOWED=0
	export __GL_VRR_ALLOWED=0
	export __GLX_VENDOR_LIBRARY_NAME=nvidia
	export GBM_BACKEND=nvidia-drm
	export LIBVA_DRIVER_NAME=nvidia
	export WLR_DRM_NO_ATOMIC=1
	export WLR_NO_HARDWARE_CURSORS=1
fi

# Cleaning up the home directory
export ANDROID_HOME="$XDG_DATA_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export HISTFILE="$XDG_CONFIG_HOME/shell/history"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Other
export HISTFILESIZE=999999
export HISTSIZE=100000
export LESSHSTFILE="-"
export SDL_JOYSTICK_HIDAPI=0
