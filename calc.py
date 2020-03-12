#!/bin/python3

import sys
from math import *

if len(sys.argv) == 1:
    print("No input given!")
    sys.exit()

print(eval("".join(sys.argv[1:])))
