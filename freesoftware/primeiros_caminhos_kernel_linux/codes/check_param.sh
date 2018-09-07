USAGE="USAGE:$(basename $0) <host> <admin_task>"

#check argument count
if [ $# -ne 2 ]
then
  echo $USAGE
  exit
fi

echo $1
echo $2
