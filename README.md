# Garrett Howard's dotfiles

These are the dotfiles I use with my favorite software. Feel free to modify or dedistribute these scripts and configurations as you wish!

- Settings for:
	- basic utilities
		- [bash](https://www.gnu.org/software/bash/) (Unix shell)
		- [nvim](https://neovim.io/) (text editor)
		- [brave](https://brave.com/) (web browser)
	- desktop environment
		- [dunst](https://dunst-project.org/) (notification daemon)
		- [flameshot](https://flameshot.org/) (screenshot utility)
		- [picom](https://github.com/yshui/picom/) (compositor)
		- [xorg](https://www.x.org) (x window system implementation)
		- [xwallpaper](https://github.com/stoeckmann/xwallpaper/) (wallpaper setter)
	- personal software
		- [abook](https://abook.sourceforge.io) (address book)
		- [lf](https://github.com/gokcehan/lf/) (file manager)
		- [mpd](https://www.musicpd.org/)/[ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) (music)
		- [neomutt](https://neomutt.org/) (email)
		- [newsboat](https://newsboat.org/) (rss reader)
		- [mupdf](https://mupdf.com) (document viewer)
- Scripts in `~/.local/bin/`

## Usage

This repository includes a `Makefile` with commands for easing the use of these dotfiles.

- `make deploy`: Deploys dotfiles to user's home directory. This **will** overwrite your existing dotfiles, please back them up.

## Acknowledgements

These dotfiles were intended for use with a GNU/Linux distribution (Arch Linux, Debian, Gentoo, etc.) and suckless programs such as:

- [dmenu](https://tools.suckless.org/dmenu/) (menu bar)
- [dwm](https://dwm.suckless.org/) (window manager)
- [dwmblocks](https://github.com/torrinfail/dwmblocks) (status bar)
- [st](https://st.suckless.org/) (terminal emulator)

The scripts found in `~/.local/bin/` are POSIX-compliant and will work with most shells and sets of UNIX utilities, e.g., GNU coreutils, Plan 9, \*BSD, etc.
