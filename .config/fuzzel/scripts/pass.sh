#!/bin/sh

password=$(pass | awk '{print $2}' | sed '1d' | sed -e ':again' -e 's/[^\x08]\x08\x1b\[K//' -e 't again' -e 's/\x1b_[^\x1b]*\x1b[\]//g' -e 's/\x1B\[[^m]*m//g' | fuzzel -d)

[ -n "$password" ] && wl-copy $(pass show "$password")
