echo "Heyyyy, I am running for $SECONDS!"
start_this=$SECONDS
echo "How about take a nap?"
sleep 2
finish_this=$SECONDS
echo "Ow... it was a longgg nap, " $((  finish_this - start_this ))
