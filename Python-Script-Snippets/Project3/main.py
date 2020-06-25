#!/usr/bin/env python

# Robot1.py is the easily written and my preferred method
# Robot2.py is the well written, easy to read, and borrowed from the Internet
# Why choose one over the other? Program speed!
# Speed is negligable between these two, and if speed is an issue use C Programming/Compiled

# *Code has not been FAT TESTED!*

import sys, os, time
os.system('cls')  # on windows
print("\nWelcome to the ROBOT program")
print("\tchoose 1 for EASY Programming Method")
print("\tchoose 2 for LESS DESIRABLE Method")

choice = int(input("\nEnter 1 or 2: "))

if (choice == 1):
    from robot1 import *
    # MyDict method
    
    os.system('cls')  # on windows
    r1_drive_backward()
    r2_drive_forward()
    r1_turn_right()
    r2_turn_left()

else:
    from robot2 import *
    # OOP method
    
    os.system('cls')  # on windows
    r1.drive_backward()
    r2.drive_forward()
    r1.turn_right()
    r2.turn_left()