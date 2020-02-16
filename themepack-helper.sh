#!/bin/bash
#
#    Theme pack support for Sailfish OS - Enables theme pack support in Sailfish OS.
#    Copyright (C) 2015-2020  fravaccaro fravaccaro90@gmail.com - Initial release
#    Copyright (C) 2016  dfstorm dfstorm@riseup.net - Change from ImageMagik to Inkscape
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
if [ "$(ls ./jolla/scalable/icons)" ]; then

    ls ./jolla/scalable/icons/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./jolla/z1.0/icons/$destFile; export-height:86; export-width:86;" $file
            inkscape --without-gui --actions="export-filename:./jolla/z1.25/icons/$destFile; export-height:108; export-width:108;" $file
            inkscape --without-gui --actions="export-filename:./jolla/z1.5/icons/$destFile; export-height:129; export-width:129;" $file
            inkscape --without-gui --actions="export-filename:./jolla/z1.5-large/icons/$destFile; export-height:129; export-width:129;" $file
            inkscape --without-gui --actions="export-filename:./jolla/z1.75/icons/$destFile; export-height:151; export-width:151;" $file
            inkscape --without-gui --actions="export-filename:./jolla/z2.0/icons/$destFile; export-height:172; export-width:172;" $file
        done
fi

# Resize native apps icons
if [ "$(ls ./native/scalable/apps)" ]; then
    ls ./native/scalable/apps/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./native/86x86/apps/$destFile; export-height:86; export-width:86;" $file
            inkscape --without-gui --actions="export-filename:./native/108x108/apps/$destFile; export-height:108; export-width:108;" $file
            inkscape --without-gui --actions="export-filename:./native/128x128/apps/$destFile; export-height:128; export-width:128;" $file
            inkscape --without-gui --actions="export-filename:./native/172x172/apps/$destFile; export-height:172; export-width:172;" $file
            inkscape --without-gui --actions="export-filename:./native/256x256/apps/$destFile; export-height:256; export-width:256;" $file
        done
fi

# Resize Android icons
if [ "$(ls ./apk/scalable)" ]; then
    ls ./apk/scalable/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./apk/86x86/$destFile; export-height:86; export-width:86;" $file
            inkscape --without-gui --actions="export-filename:./apk/128x128/$destFile; export-height:128; export-width:128;" $file
            inkscape --without-gui --actions="export-filename:./apk/192x192/$destFile; export-height:192; export-width:192;" $file
        done
fi

# Resize DynCal icons
if [ "$(ls ./dyncal/scalable/)" ]; then
    ls ./dyncal/scalable/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./dyncal/86x86/$destFile; export-height:86; export-width:86;" $file
            inkscape --without-gui --actions="export-filename:./dyncal/256x256/$destFile; export-height:256; export-width:256;" $file
        done
fi

# Resize DynClock icons
if [ "$(ls ./dynclock/scalable/)" ]; then
    ls ./dynclock/scalable/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./dynclock/86x86/$destFile; export-height:86; export-width:86;" $file
            inkscape --without-gui --actions="export-filename:./dynclock/256x256/$destFile; export-height:256; export-width:256;" $file
        done
fi

# Resize overlays
if [ "$(ls ./overlay/)" ]; then
    ls ./overlay/*.svg | while read file
        do
            filename=$(basename "$file")
            destFile=`echo $filename | sed 's/\.svg/\.png/'`
            inkscape --without-gui --actions="export-filename:./overlay/$destFile; export-height:512; export-width:512;" $file
        done
fi

exit 0
