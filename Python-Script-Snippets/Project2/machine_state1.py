#!/usr/bin/env python

import sys, os, time
from termcolor import colored

# INIT 0 - power on

def INIT():
    _state = _last_state = 0
    os.system('cls')  # on windows
    print("\nYour position is INIT state = %s" % _state)
    print colored("\nPOWER IS ON", "red")
    time.sleep(8)
    os.system('cls')  # on windows
    WAIT(_last_state)

# START 1 - switch on, heat water

def START():
    _state = _last_state = 1
    print("\nYour position is START state = %s" % _state)
    print colored("\nSWITCH IS ON, WATER IS HEATING", "green")
    time.sleep(8)
    os.system('cls')  # on windows
    WAIT(_last_state)

# PROMPT 2 - coffee pod in, select cup size

def PROMPT():
    _state = _last_state = 2
    print("\nYour position is PROMPT state = %s" % _state)
    print colored("\nCOFFEE POD IN, SELECT CUP SIZE", "green")
    time.sleep(8)
    os.system('cls')  # on windows
    WAIT(_last_state)

# USER 3 - cup selected, brew coffee

def USER():
    _state = _last_state = 3
    print("\nYour position is USER state = %s" % _state)
    print colored("\nCUP SELECTED, BREW COFFEE", "green")
    time.sleep(8)
    os.system('cls')  # on windows
    WAIT(_last_state)

# BREW 4 - brew complete, output to cup

def BREW():
    _state = _last_state = 4
    print("\nYour position is BREW state =  %s" % _state)
    print colored("\nBREW COMPLETE, OUTPUT TO CUP", "green")
    time.sleep(8)
    os.system('cls')  # on windows
    WAIT(_last_state)

# WAIT 5 - verify step completion

def WAIT(_last_state):
    _state = 5
    print("\nYour position is WAIT state = %s" % _state)
    print colored("\nVERIFYING STEP COMPLETION", "yellow")
    if _last_state == 1:
        print colored("Your last position was START state = %s" % _last_state, "blue")
        time.sleep(8)
        os.system('cls')  # on windows
    elif _last_state == 2:
        print colored("Your last position was PROMPT state = %s" % _last_state, "blue")
        time.sleep(8)
        os.system('cls')  # on windows
    elif _last_state == 3:
        print colored("Your last position was USER state = %s" % _last_state, "blue")
        time.sleep(8)
        os.system('cls')  # on windows
    elif _last_state == 4:
        print colored("Your last position was BREW state = %s" % _last_state, "blue")
        print colored("\nYour coffee or tea is WAITING!", "blue")
        print colored("\nHAVE A NICE DAY!", "blue")
        time.sleep(10)
        os.system('cls')  # on windows
    else:
        print colored("Your last position was INIT state = %s" % _last_state, "blue")
        time.sleep(8)
        os.system('cls')  # on windows
        
