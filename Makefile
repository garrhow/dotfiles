all: deploy

deploy:
	mkdir -p ~/.config
	mkdir -p ~/.local/bin
	mkdir -p ~/.local/share
	cp -r .config/* ~/.config/
	cp -r .local/bin/* ~/.local/bin/
	cp -r .local/share/* ~/.local/share/

themes:
	cp -r .themes/fonts ~/.local/share/fonts
	cp -r .themes/icons ~/.local/share/icons
	cp -r .themes/themes ~/.local/share/themes

.PHONY: deploy themes
