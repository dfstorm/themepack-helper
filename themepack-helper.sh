#!/bin/bash
#
#    Theme pack support for Sailfish OS - Enables theme pack support in Sailfish OS.
#    Copyright (C) 2015  fravaccaro fravaccaro90@gmail.com
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Usage
# Place some icons in scalable folders and launche this script from the root folder of the themepack.

# Resize Jolla stock icons
if [ "$(ls $jolla)" ]; then
mogrify -path ./jolla/z1.0/icons/ -format png -background none -resize 86x86 ./jolla/scalable/icons/*.svg
mogrify -path ./jolla/z1.5/icons/ -format png -background none -resize 129x129 ./jolla/scalable/icons/*.svg
mogrify -path ./jolla/z2.0/icons/ -format png -background none -resize 172x172 ./jolla/scalable/icons/*.svg
fi

# Resize native apps icons
if [ "$(ls $native)" ]; then
mogrify -path ./native/86x86/apps/ -format png -background none -resize 86x86 ./native/scalable/apps/*.svg
mogrify -path ./native/108x108/apps/ -format png -background none -resize 108x108 ./native/scalable/apps/*.svg
mogrify -path ./native/128x128/apps/ -format png -background none -resize 128x128 ./native/scalable/apps/*.svg
mogrify -path ./native/256x256/apps/ -format png -background none -resize 256x256 ./native/scalable/apps/*.svg
fi

# Resize Android icons
if [ "$(ls $apk)" ]; then
mogrify -path ./apk/86x86 -format png -background none -resize 86x86 ./apk/scalable/*.svg
mogrify -path ./apk/128x128 -format png -background none -resize 128x128 ./apk/scalable/*.svg
fi

exit 0