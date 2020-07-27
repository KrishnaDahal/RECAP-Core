
Debian
====================
This directory contains files used to package recapd/recap-qt
for Debian-based Linux systems. If you compile recapd/recap-qt yourself, there are some useful files here.

## recap: URI support ##


recap-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install recap-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your recap-qt binary to `/usr/bin`
and the `../../share/pixmaps/recap128.png` to `/usr/share/pixmaps`

recap-qt.protocol (KDE)

