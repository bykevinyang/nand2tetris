#!/bin/bash

file1="C:\Users\Kevin Yang\Make\nand2tetris\projects\03\a\bit.hdl"
file2="C:\Users\Kevin Yang\Make\nand2tetris\projects\03\a\bit.cmp"

if cmp -s "$file1" "$file2"; then
  printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
else
  printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
fi