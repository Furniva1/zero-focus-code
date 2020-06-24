#!/usr/bin/env python

# WAIT routine left out
# Mouse click to close box after launch
# Your picture path may differ?

import sys, os, time
import tkinter as tk
from PIL import Image, ImageTk

def graphics0(_state):
    root = tk.Tk()
    root.title('STATE MACHINE - Coffee/Tea Brewing')  # title splash
    root.iconbitmap("C:\\Project2\\pictures\\Super-Mario-Mushroom.ico")
    imname0 = "C:\\Project2\\pictures\\POWER_ON.png"
    im0 = ImageTk.PhotoImage(Image.open(imname0))
    text0 = tk.Label(root, text="Your position is INIT state = %s" % _state + "\n\nPOWER IS ON")
    text0.grid()
    text0["compound"] = tk.LEFT
    text0["image"] = im0
    root.mainloop()
    
def graphics1(_state):
    root = tk.Tk()
    root.title('STATE MACHINE - Coffee/Tea Brewing')  # title splash
    root.iconbitmap("C:\\Project2\\pictures\\Super-Mario-Mushroom.ico")
    imname1 = "C:\\Project2\\pictures\\WATER_HEATING.png"
    im1 = ImageTk.PhotoImage(Image.open(imname1))
    text1 = tk.Label(root, text="Your position is START state = %s" % _state + "\n\nSWITCH IS ON, WATER IS HEATING")
    text1.grid()
    text1["compound"] = tk.LEFT
    text1["image"] = im1
    root.mainloop()  

def graphics2(_state):
    root = tk.Tk()
    root.title('STATE MACHINE - Coffee/Tea Brewing')  # title splash
    root.iconbitmap("C:\\Project2\\pictures\\Super-Mario-Mushroom.ico")
    imname2 = "C:\\Project2\\pictures\\POD_IN.png"
    im2 = ImageTk.PhotoImage(Image.open(imname2))
    text2 = tk.Label(root, text="Your position is PROMPT state = %s" % _state + "\n\nCOFFEE POD IN, SELECT CUP SIZE")
    text2.grid()
    text2["compound"] = tk.LEFT
    text2["image"] = im2
    root.mainloop()  
    
def graphics3(_state):
    root = tk.Tk()
    root.title('STATE MACHINE - Coffee/Tea Brewing')  # title splash
    root.iconbitmap("C:\\Project2\\pictures\\Super-Mario-Mushroom.ico")
    imname3 = "C:\\Project2\\pictures\\COFFEE_BREWING.png"
    im3 = ImageTk.PhotoImage(Image.open(imname3))
    text3 = tk.Label(root, text="Your position is USER state = %s" % _state + "\n\nCUP SELECTED, BREW COFFEE")
    text3.grid()
    text3["compound"] = tk.LEFT
    text3["image"] = im3
    root.mainloop()   
    
def graphics4(_state):
    root = tk.Tk()
    root.title('STATE MACHINE - Coffee/Tea Brewing')  # title splash
    root.iconbitmap("C:\\Project2\\pictures\\Super-Mario-Mushroom.ico")
    imname4 = "C:\\Project2\\pictures\\ONE_CUP.png"
    im4 = ImageTk.PhotoImage(Image.open(imname4))
    text4 = tk.Label(root, text="Your position is BREW state =  %s" % _state + "\n\nBREW COMPLETE, OUTPUT TO CUP" + "\nHAVE A NICE DAY!")
    text4.grid()
    text4["compound"] = tk.LEFT
    text4["image"] = im4
    root.mainloop() 


# INIT 0 - power on

def INIT():
    os.system('cls')  # on windows
    _state = 0
    graphics0(_state)

# START 1 - switch on, heat water

def START():
    _state = 1
    graphics1(_state)

# PROMPT 2 - coffee pod in, select cup size

def PROMPT():
    _state = 2
    graphics2(_state)

# USER 3 - cup selected, brew coffee

def USER():
    _state = 3
    graphics3(_state)

# BREW 4 - brew complete, output to cup

def BREW():
    _state = 4
    graphics4(_state)