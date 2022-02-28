deploy:
	mkdir -p ~/.config
	mkdir -p ~/.local/bin
	mkdir -p ~/.local/share
	cp -r .config/* ~/.config/
	cp -r .local/bin/* ~/.local/bin/
	cp -r .local/share/* ~/.local/share/
