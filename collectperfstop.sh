#This script will kill all the process started by collectperfstart.sh
#Make sure you use same directory used when  collectperfstart.sh was called
#!/bin/bash

netstat -s | egrep -i 'loss|retran' >> $1/netstat.out
/sbin/ifconfig >>  $1/ifconfig.out

i=`paste -d " " -s $1/pid.txt`
kill -9 $i
