# Garrett Howard's dotfiles

These are the dotfiles I use with my favorite software. Feel free to modify or dedistribute these scripts and configurations as you wish!

- Settings for:
	- basic utilities
		- [zsh](https://www.gnu.org/software/bash/) (Unix shell)
		- [nvim](https://neovim.io/) (text editor)
		- [librewolf](https://librewolf.net/) (web browser)
	- desktop environment
		- [alacritty](https://alacritty.org/) (terminal emulator)
		- [awesome](https://awesomewm.org/) (window manager)
		- [flameshot](https://flameshot.org/) (screenshot utility)
		- [picom](https://github.com/yshui/picom) (compositor)
		- [xorg](https://www.x.org) (x window system implementation)
	- personal software
		- [abook](https://abook.sourceforge.io) (address book)
		- [mpd](https://www.musicpd.org/)/[ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) (music)
		- [neomutt](https://neomutt.org/) (email)
		- [newsboat](https://newsboat.org/) (rss reader)
		- [mupdf](https://mupdf.com) (document viewer)
- Scripts in `~/.local/bin/`

## Usage

This repository includes a `Makefile` with commands for easing the use of these dotfiles.

- `make deploy`: Deploys dotfiles to user's home directory. This **will** overwrite your existing dotfiles, so please back them up.
- `make themes`: Deploys desktop themes and icons to the user's home directory.

## Acknowledgements

These dotfiles were intended for use with a Unix-like operating system (Arch Linux, Gentoo, OpenBSD, etc.).

The scripts found in `~/.local/bin/` are POSIX-compliant and will work with most shells and sets of UNIX utilities, e.g., GNU coreutils, Plan 9, \*BSD, etc.
