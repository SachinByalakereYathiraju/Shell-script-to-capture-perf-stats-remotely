#This script will ssh into required machine and start the script and come out
#use sshpass for password enabled ssh connection
#provide ssh key as needed(sshpvtkey)

scriptname=$1
directoryname=$2

./$scriptname.sh $directoryname
ssh -i sshpvtkey -l username {ip}  ./$scriptname.sh $directoryname

sshpass -p "eevuiFi2" ssh -l sachin {ip} ./$scriptname.sh $directoryname

sshpass -p "eevuiFi2" ssh -l sachin {ip} ./$scriptname.sh $directoryname
