file1=$1
file2=$2

echo $file1
echo $file2

diff=($(diff file1 file2))