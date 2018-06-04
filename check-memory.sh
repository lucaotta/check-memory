PROC_PID=$1
PROC_NAME="foo"
WORK_DIR=$(date -Iminutes)
mkdir $WORK_DIR
cd $WORK_DIR
count=0
while true; do
	cat /proc/meminfo > $(printf "check-%05d.log" $count)
	cat /proc/$PROC_PID/status > $(printf "proc-$PROC_NAME-%05d.log" $count)
	count=$((count+1))
	sync
	sleep 10
done 
