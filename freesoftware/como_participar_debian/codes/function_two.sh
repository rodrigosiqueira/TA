#!/bin/bash
# Reference: http://www.cyberciti.biz/faq/bash-shell-script-function-examples/
usage() {
  echo "Usage: $0 filename"
  exit 1
}
function file_exits
{
  local f="$1"
  [[ -f "$f" ]] && return 0 || return 1
}
# invoke  usage
[[ $# -eq 0 ]] && usage
# Invoke file_exits
if ( file_exits "$1" )
then
 echo "Nice! We found the file!"
else
 echo "File not found"
fi
