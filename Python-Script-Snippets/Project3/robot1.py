#!/usr/bin/env python

r1 = {
        "name"    : "Ford",
        "desc"    : "Mustang",
        "color"   : "Yellow",
        "owner"   : "Disappointed",
        "speed"   : "0",
        "duration": "till failure",
}
        
r2 = {
        "name"    : "Ferrari",
        "desc"    : "Enzo",
        "color"   : "Red",
        "owner"   : "Pleased",
        "speed"   : "Infinite",
        "duration": "till breakdown",
}

def r1_drive_forward():
    print(r1["name"] +" is driving forward "+ r1["duration"])
def r2_drive_forward():
    print(r2["name"] +" is driving forward "+ r2["duration"])

def r1_drive_backward():
    print(r1["name"] +" is driving backward "+ r1["duration"])
def r2_drive_backward():
    print(r2["name"] +" is driving backward "+ r2["duration"])
    
def r1_turn_left():
    print(r1["name"] +" is turning left "+ r1["duration"])
def r2_turn_left():
    print(r2["name"] +" is turning left "+ r2["duration"])

def r1_turn_right():
    print(r1["name"] +" is turning right "+ r1["duration"])
def r2_turn_right():
    print(r2["name"] +" is turning right "+ r2["duration"])
    
def r1_set_speed():
    print("the motor speed is now " + r1["duration"])
def r2_set_speed():
    print("the motor speed is now " + r2["duration"])

def r1_set_duration(self, duration):
    print("the duration is now " + r1["duration"])
def r2_set_duration(self, duration):
    print("the duration is now " + r2["duration"])