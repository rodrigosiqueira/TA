if [ ! -z $1 ]
then
  proccomm="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | grep $1"
else
  proccomm="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu"
fi

eval $proccomm
