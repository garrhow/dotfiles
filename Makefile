deploy:
	[ ! -d ~/.config ]; mkdir -p ~/.config
	[ ! -d ~/.local/bin ]; mkdir -p ~/.local/bin
	[ ! -d ~/.local/share ]; mkdir -p ~/.local/share
	cp .asoundrc ~/.asoundrc
	cp .config/* ~/.config/ -r
	cp .local/bin/* ~/.local/bin/ -r
	cp .local/share/* ~/.local/share/ -r
