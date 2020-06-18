#!/usr/bin/env python

import time
import os, sys
import gui1, gui2

def Test_OS():
    if os.name == 'posix':
        os.system('clear')  # on linux / os x
        print("\n")
        print("This is a Unix-like operating system, Linux, BSD, Minix and others")
        print("it has bee recognized as", sys.platform)
        print("\n")
        time.sleep(3)
        os.system('clear')  # on linux / os x
    elif os.name == 'nt':
        os.system('cls')  # on windows
        print("\n\n")
        print("\tThis is a Windows type operating system")
        print("\tit has bee recognized as", sys.platform)
        print("\n")
        time.sleep(3)
        os.system('cls')  # on windows
    else:
        print("\t\t\tThis OS is unconfirmed?")
        print("\n")
        time.sleep(3)

def Album_Choice():
    print("\n")
    choice = input('Display picutures in (g)rid format or (s)erial format: Choose g or s ')
    if choice == 'g':
        print("\n")
        gui1.Display_Four_Images()
    elif choice == 's':
        print("\n")
        gui2.Four_Images_One_Window()
    else:
        print("\n")
        print("Wrong choice ... goodbye!")









