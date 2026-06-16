SR Latch (Set-Reset Latch)
# Overview

The SR latch is the simplest memory element that stores 1-bit data using two inputs:

S (Set)
R (Reset)

# Truth Table
S	R	Q(next)	Description
0	0	Q(prev)	Hold (Memory)
0	1	0	      Reset
1	0	1	      Set
1	1	X	      Invalid 

# Key Features
Stores 1-bit data
Has feedback mechanism
Contains an invalid state (S=1, R=1)
Used for understanding basic memory behavior

# Testbench Highlights
Tests Set, Reset, Hold, and Invalid states
Uses $monitor to track output changes
Generates waveform using $dumpfile and $dumpvars
