# Garrett Howard's dotfiles

These are the dotfiles I use with my favorite software. Feel free to modify or dedistribute these scripts and configurations as you wish!

- Settings for:
	- basic utilities
		- [chromium](https://www.chromium.org/Home/) (web browser)
		- [foot](https://codeberg.org/dnkl/foot) (terminal emulator)
		- [nvim](https://neovim.io/) (text editor)
		- [zsh](https://www.gnu.org/software/bash/) (Unix shell)
	- desktop environment
		- [brightnessctl](https://github.com/Hummer12007/brightnessctl) (screen brightness)
		- [fuzzel](https://codeberg.org/dnkl/fuzzel) (application launcher)
		- [grim](https://wayland.emersion.fr/grim/) (screenshot utility)
		- [imv](https://sr.ht/~exec64/imv/) (image viewer)
		- [lxsession](https://github.com/lxde/lxsession) (Polkit authentication agent)
		- [mako](https://wayland.emersion.fr/mako/) (notification daemon)
		- [mpv](https://mpv.io/) (audio & video player)
		- [noto](https://fonts.google.com/noto) (font family)
		- [playerctl](https://github.com/altdesktop/playerctl) (media controller)
		- [slurp](https://wayland.emersion.fr/grim/) (reigon selection tool)
		- [sway](https://swaywm.org/) (Wayland compositor)
		- [swaybg](https://github.com/swaywm/swaybg) (wallpaper setter)
		- [swayidle](https://github.com/swaywm/swayidle) (idle manager)
		- [swaylock](https://github.com/swaywm/swaylock) (screen locker)
		- [waybar](https://github.com/Alexays/Waybar) (status bar)
		- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) (clipboard utility)
		- [xdg-desktop-portal-wlr](https://github.com/emersion/xdg-desktop-portal-wlr) (desktop integration portal)
		- [zathura](https://pwmt.org/projects/zathura/) (document viewer)
	- personal software
		- [abook](https://abook.sourceforge.io) (address book)
		- [mpd](https://www.musicpd.org/)/[ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) (music daemon)
		- [neomutt](https://neomutt.org/) (email)
		- [newsboat](https://newsboat.org/) (rss reader)
		- [pass](https://www.passwordstore.org/) (password manager)
- Scripts in `~/.local/bin/`
	- audioctl - Controller for sound systems

## Usage

This repository includes a `Makefile` with commands for easing the use of these dotfiles.

- `make deploy`: Deploys dotfiles to user's home directory. This **will** overwrite pre-existing dotfiles, so please back them up.
- `make themes`: Deploys desktop themes and icons to the current user's home directory.

## Acknowledgements

These dotfiles were intended for use with a Unix-like operating system (Arch Linux, Gentoo, OpenBSD, etc.).

The scripts found in `~/.local/bin/` are POSIX-compliant and will work with most shells and sets of UNIX utilities, e.g., GNU coreutils, Plan 9, \*BSD, etc.
