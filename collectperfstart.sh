#Add any other required command to collect the any other perf stat if needed
#!/bin/bash
mkdir $1
netstat -s | egrep -i 'loss|retran' >> $1/netstat.out

/sbin/ifconfig >> $1/ifconfig.out

nohup sar -n DEV 1 >> $1/sar.out &
sarpid=$!

nohup sar -n EDEV 1 >> $1/sar_EDEV.out &
saredevpid=$!

nohup mpstat 1 >> $1/mpstat.out &
mpstatpid=$!

nohup top -b -d 1 >> $1/top.out &
toppid=$!


echo -e  "$sarpid\n$saredevpid\n$mpstatpid\n$toppid" >> $1/pid.txt
