# Garrett Howard's dotfiles

These are the dotfiles I use for use with my favorite software.

- Settings for:
	- [bash](https://www.gnu.org/software/bash/) (shell)
	- [nvim](https://neovim.io/) (text editor)
	- [neomutt](https://neomutt.org/) (email)
	- [mpd](https://www.musicpd.org/)/[ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) (music)
	- [xorg](https://www.x.org) (x window system)
	- [zathura](https://pwmt.org/projects/zathura/) (document viewer)
	- [picom](https://github.com/yshui/picom) (compositor)
	- [dunst](https://dunst-project.org/) (notifications)
- Scripts in `~/.local/bin/`

## Usage

This repository includes a `Makefile` with commands for easing the use of these dotfiles.

- `make deploy`: Deploys dotfiles to user's home directory. This **will** overwrite your existing dotfiles, please back them up.

## Acknowledgements

These dotfiles were intended for use on the Arch Linux distribution and with suckless programs such as:

- [dwm](https://dwm.suckless.org/) (window manager)
- [dmenu](https://tools.suckless.org/dmenu/) (menu bar)
- [slstatus](https://tools.suckless.org/slstatus/) (status bar)
- [st](https://st.suckless.org/) (terminal emulator)

The scripts found in `~/.local/bin/` are POSIX-compliant and will work with most shells and sets of UNIX utilities, e.g., GNU coreutils, Plan 9, BSD, etc.
