all: deploy

deploy:
	mkdir -p ~/.config
	mkdir -p ~/.local/bin
	mkdir -p ~/.local/share
	cp -r .config/* ~/.config/
	cp -r .local/bin/* ~/.local/bin/
	cp -r .local/share/* ~/.local/share/

profile:
	if [ ! -e ~/.zprofile ]; then ln -s .config/shell/profile ~/.zprofile; fi

themes:
	mkdir -p ~/.local/share/fonts
	mkdir -p ~/.local/share/icons
	mkdir -p ~/.local/share/themes
	cp -r .themes/fonts/* ~/.local/share/fonts
	cp -r .themes/icons/* ~/.local/share/icons
	cp -r .themes/themes/* ~/.local/share/themes

.PHONY: deploy profile themes
