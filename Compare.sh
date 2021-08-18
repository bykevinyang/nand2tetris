# (c) 2021 Kevin Yang (@bykevinyang) 
# This code is licensed under MIT license (see LICENSE.txt for details)

#!bin/bash

# The code below takes one argument, the gate name,
# and will auto compare the .out and .cmp files for that gate

# If for some reason the script below does not work make sure:
# 1. The .out or .cmp files exist
# 2. The file you are using has the same name

inputGate="$1"

outLines=$(find . -name "$inputGate.out" | wc -l)
cmpLines=$(find . -name "$inputGate.cmp" | wc -l)

echo -e "---------------------------------------\n"

if [ $outLines -eq 1 ]; then
    outFile=($(find . -name "$inputGate.out"))
    echo "File path of $inputeGate.out is: $outFile"
else
    echo "Error: $inputGate.out exists in multiple places"
    exit 1
fi

if [ $cmpLines -eq 1 ]; then
    cmpFile=($(find . -name "$inputGate.cmp"))
    echo -e "File path of $inputGate.cmp: $cmpFile \n"
else
    echo -e "Error: $inputGate.cmp exists in multiple places \n"
    exit 1
fi

if cmp -s "$outFile" "$cmpFile"; then
    echo "Files are the same, good job!"
else
    echo "Files are different, go debug :("
fi
