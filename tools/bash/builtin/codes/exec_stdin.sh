# Reference: http://tldp.org/LDP/abs/html/x17974.html

touch data-file
echo -e "99\n77" > data-file

exec 6<&0 # Link file descriptor #6 with stdin. Saves stdin

exec < data-file # Replace stdin by data-file

read a1 # Reads first line of file "data-file"
read a2

echo
echo "Following lines read from file."
echo "-------------------------------"
echo $a1
echo $a2

echo; echo; echo

exec 0<&6 6<&-

echo -n "Enter data "
read b1 # Read again from stdin
echo "Input read from stdin."
echo "----------------------"
echo "b1 = $b1"

echo

rm data-file

exit 0
