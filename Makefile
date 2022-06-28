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

update:
	rm -rf .themes/themes/nordic;
	curl -LQR https://github.com/EliverLara/Nordic/releases/latest/download/Nordic.tar.xz -o nordic.tar.xz; tar -xvf nordic.tar.xz; mv Nordic .themes/themes/nordic; rm nordic.tar.xz


.PHONY: deploy profile themes
