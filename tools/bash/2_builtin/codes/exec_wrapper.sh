# Reference: http://wiki.bash-hackers.org/commands/builtin/exec
myprog=/bin/ls

echo "This is the wrapper script, it will exec $myprog"

exec "$myprog" "$@"
