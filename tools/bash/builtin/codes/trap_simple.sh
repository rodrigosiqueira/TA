trap "echo KABOOOOOMMMMMMM" SIGINT
echo "pid is $$"

while :
do
  sleep 30
done
