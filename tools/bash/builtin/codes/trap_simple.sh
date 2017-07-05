trap "echo KABOOOOOMMMMMMM" SIGINT SIGTERM
echo "pid is $$"

while :
do
  sleep 30
done
