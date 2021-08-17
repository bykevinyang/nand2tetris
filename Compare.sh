# #!/bin/bash

# file1="C:\Users\Kevin Yang\Make\nand2tetris\projects\03\a\bit.out"
# file2="C:\Users\Kevin Yang\Make\nand2tetris\projects\03\a\bit.cmp"

# if cmp -s "$file1" "$file2"; then
#     printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
# else
#     printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
# fi

# path1=find . -name "$1.out"
# path2=find . -name "$1.cmp"

# echo $path1
# echo $path2
inputGate="$1"

outLines=$(find . -name "$inputGate.out" | wc -l)
cmpLines=$(find . -name "$inputGate.cmp" | wc -l)

echo $outLines
echo $cmpLines

if [ $outLines -eq 1 ]; then
    outFile=($(find . -name "$inputGate.out"))
    echo "File path of $inputeGate.out is: $outFile"
else
    echo "Error: $inputGate.out exists in multiple places"
    exit 1
fi

if [ $cmpLines -eq 1 ]; then
    cmpFile=($(find . -name "$inputGate.cmp"))
    echo "File path of $inputGate.cmp: $cmpFile\n"
else
    echo "Error: $inputGate.cmp exists in multiple places"
    exit 1
fi

if cmp -s "$outFiles" "$cmpFiles"; then
    echo "Files are the same, good job!"
else
    echo "Files are different, go debug"
fi

