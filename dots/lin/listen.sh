echo "Screen locked."
/home/samuel/Scripts/locker &
while [ ! $(cat /home/samuel/Scripts/dat/.lsn) == 0 ]
do	
	if [ "$(tail /home/samuel/Logface/live.log | grep 'Authentication failure')" == "Authentication failure" ]
	then
		echo "Attempted login at $(date +"%Y-%m-%d %I:%M:%S")"
		fswebcam -S 10 --set brightness=75% --set contrast=0% -F 1 -r 640x480 --no-banner /home/samuel/Logface/FailLog/$(date +"%Y-%m-%d_%I-%M-%S").jpg > /dev/null 2>&1
		echo "" > /home/samuel/Logface/live.log
	fi
done
echo "Screen unlocked."
