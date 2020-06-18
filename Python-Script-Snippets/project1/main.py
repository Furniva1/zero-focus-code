#!/usr/bin/env python

# main.py is an exploration into building a front end for future programs
# project1 folder is a virtualenv of python code designed to be portable
# project1 has only been tested on a Linux system, it may need further development

# gui_ostest.py checks operating system type, and launches album choice
# gui1.py grid style photo manager
# gui2.py serial photo manager

# photos were resized ahead of time doing the following:
# dnf info graphicsmagick
# dnf install graphicsmagick graphicsmagick-devel graphicsmagick-perl
# convert photo.png -resize 400x250! photo.png
# identify -format "%wx%h" photo.png


import gui_ostest

gui_ostest.Test_OS()
gui_ostest.Album_Choice()

