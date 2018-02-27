
echo "             SYSTEM INFO              "
echo $USER
echo $OSTYPE
echo "----------AVAILABLE SHELLS---------"
cat /etc/shells
echo "----------KERNELINFO-------"
echo "$`(uname -r)`"
echo "----------CPU INFO---------"
echo `cat /proc/cpuinfo`
echo "----------MEMORY INFO---------"
echo `cat /proc/meminfo`
echo "----------FILE SYSTEM(Mount)---------"
echo `cat /proc/mounts`
echo "----------HARDDISK INFO---------"
df -h
echo "----------INPUT DEVICES INFO---------"
xinput list
