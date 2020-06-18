#!/usr/bin/env python

try:
    import tkinter  # py3
except ImportError:
    import Tkinter as tkinter  # py2

from PIL import ImageTk, Image

image_number=1

def Four_Images_One_Window():

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

    myimages = [im1, im2, im3, im4]

    my_label = tkinter.Label(image=im1)
    my_label.grid(row=0, column=0, columnspan=3)

    def forward(image_number):
        global my_label
        global button_forward
        global button_back

        my_label = tkinter.Label(image=myimages[image_number-1])
        button_forward = tkinter.Button(root, text=">>", command=lambda : forward(image_number+1))
        button_back = tkinter.Button(root, text="<<", command=lambda : back(image_number-1))

        if image_number == 4:
            button_forward = tkinter.Button(root, text=">>", state='disabled')

        my_label.grid(row=0, column=0, columnspan=3)
        button_back.grid(row=1, column=0)
        button_forward.grid(row=1, column=2)

    def back(image_number):
        global my_label
        global button_forward
        global button_back

        my_label = tkinter.Label(image=myimages[image_number-1])
        button_forward = tkinter.Button(root, text=">>", command=lambda : forward(image_number+1))
        button_back = tkinter.Button(root, text="<<", command=lambda : back(image_number-1))

        if image_number == 1:
            button_back = tkinter.Button(root, text="<<", state='disabled')

        my_label.grid(row=0, column=0, columnspan=3)
        button_back.grid(row=1, column=0)
        button_forward.grid(row=1, column=2)

    button_back = tkinter.Button(root, text="<<", command=back, state='disabled')
    button_exit = tkinter.Button(root, text="exit program", command=root.quit)
    button_forward = tkinter.Button(root, text=">>", command=lambda : forward(image_number))

    button_back.grid(row=1, column=0)
    button_exit.grid(row=1, column=1)
    button_forward.grid(row=1, column=2)

    root.mainloop()

