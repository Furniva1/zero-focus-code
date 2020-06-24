#!/usr/bin/env python

# Transition through WAIT state for illustration only,
# it allows the user to visualize the steps

# STATE MACHINE - Coffee/Tea Brewing
# -----------------------------------------
#
# INIT   0   power on
# START  1   switch on, heat water
# PROMPT 2   coffee/tea pod in, select cup size
# USER   3   cup selected, brewing
# BREW   4   brew complete, output to cup
# WAIT   5   verify step completion
#
# ------------------------------------------
import sys, os, time
os.system('cls')  # on windows
print("\nWelcome to the STATE MACHINE program")
print("\tchoose 1 for command line run")
print("\tchoose 2 for graphical text box")

choice = int(input("\nEnter 1 or 2: "))

if (choice == 1):
    from machine_state1 import *
    # Command line representation of machine steps
    
    INIT()     # INIT 0 - power on
    START()    # START 1 - switch on, heat water
    PROMPT()   # PROMPT 2 - coffee pod in, select cup size
    USER()     # USER 3 - cup selected, brew coffee
    BREW()     # BREW 4 - brew complete, output to cup

else:
    from machine_state2 import *
    # Launches picture and textbox for each step
    
    INIT()     # INIT 0 - power on
    START()    # START 1 - switch on, heat water
    PROMPT()   # PROMPT 2 - coffee pod in, select cup size
    USER()     # USER 3 - cup selected, brew coffee
    BREW()     # BREW 4 - brew complete, output to cup