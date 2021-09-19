# Garrett Howard's dotfiles

These are the dotfiles I use with my favorite software. Feel free to modify or dedistribute these scripts and configurations as you wish!

- Settings for:
	- basic utilities
		- [bash](https://www.gnu.org/software/bash/) (Unix shell)
		- [nvim](https://neovim.io/) (text editor)
	- desktop environment
		- [dunst](https://dunst-project.org/) (notification daemon)
		- [flameshot](https://flameshot.org/) (screenshot utility)
		- [picom](https://github.com/yshui/picom/) (compositor)
		- [redshift](http://jonls.dk/redshift/) (screen temperature)
		- [xorg](https://www.x.org) (x window system)
		- [xwallpaper](https://github.com/stoeckmann/xwallpaper/) (wallpaper setter)
	- personal software
		- [abook](https://abook.sourceforge.io) (address book)
		- [lf](https://github.com/gokcehan/lf/) (file manager)
		- [mpd](https://www.musicpd.org/)/[ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) (music)
		- [neomutt](https://neomutt.org/) (email)
		- [newsboat](https://newsboat.org/) (rss reader)
		- [zathura](https://pwmt.org/projects/zathura/) (document viewer)
- Scripts in `~/.local/bin/`

## Usage

This repository includes a `Makefile` with commands for easing the use of these dotfiles.

- `make deploy`: Deploys dotfiles to user's home directory. This **will** overwrite your existing dotfiles, please back them up.

## Acknowledgements

These dotfiles were intended for use with the Arch Linux distribution and suckless programs such as:

- [dwm](https://dwm.suckless.org/) (window manager)
- [dmenu](https://tools.suckless.org/dmenu/) (menu bar)
- [slstatus](https://tools.suckless.org/slstatus/) (status bar)
- [st](https://st.suckless.org/) (terminal emulator)

The scripts found in `~/.local/bin/` are POSIX-compliant and will work with most shells and sets of UNIX utilities, e.g., GNU coreutils, Plan 9, \*BSD, etc.
