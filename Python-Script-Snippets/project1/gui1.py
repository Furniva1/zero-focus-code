#!/usr/bin/env python

try:
    import tkinter  # py3
except ImportError:
    import Tkinter as tkinter  # py2

from PIL import Image, ImageTk

def Display_Four_Images():  # Tile the screen

    root = tkinter.Tk()
    root.title('Welcome to my program')  # title splash

    imname1 = "MyPyImages/Cirrus.png"
    imname2 = "MyPyImages/Stratus.png"
    imname3 = "MyPyImages/Cumulus.png"
    imname4 = "MyPyImages/Lenticular.png"

    im1 = ImageTk.PhotoImage(Image.open(imname1))
    im2 = ImageTk.PhotoImage(Image.open(imname2))
    im3 = ImageTk.PhotoImage(Image.open(imname3))
    im4 = ImageTk.PhotoImage(Image.open(imname4))

    tkinter.Label(root, image=im1, bd=10).grid(row=0, column=0)
    tkinter.Label(root, image=im2, bd=10).grid(row=0, column=1)
    tkinter.Label(root, image=im3, bd=10).grid(row=1, column=0)
    tkinter.Label(root, image=im4, bd=10).grid(row=1, column=1)

    root.mainloop()

