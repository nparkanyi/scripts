#!/bin/bash
while true ; do
	for pape in $(ls ~/Pictures/papes/* | sort -R); do
		dconf write /org/gnome/desktop/background/picture-uri "'file://${pape}'";
        dconf write /org/gnome/desktop/screensaver/picture-uri "'file://${pape}'";
		sleep 900;
	done
done
