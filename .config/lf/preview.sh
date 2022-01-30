#!/bin/sh

case "$1" in
	# Compressed file archives
	*.tar*) tar tf "$1";;
	*.zip) unzip -l "$1";;
	*.rar) unrar l "$1";;
	*.7z) 7z l "$1";;
	# Document files
	*.pdf) pdftotext "$1" -;;
	# Pictures
	*.jpg) jp2a --colors --color-depth=24 --fill --chars="  " "$1";;
	*.jpeg) jp2a --colors --color-depth=24 --fill --chars="  " "$1";;
	*.png) jp2a --colors --color-depth=24 --fill --chars="  " "$1";;
	# Other files, such as text
	*) highlight -f -O ansi "$1";;
esac
