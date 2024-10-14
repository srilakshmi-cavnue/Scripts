#$1 - filename

./v4l2_raw_snap.sh 8 80 $1
sleep 10
./v4l2_raw_snap.sh 8 167 $1
sleep 10
./v4l2_raw_snap.sh 8 330 $1
sleep 10
./v4l2_raw_snap.sh 16 80 $1
sleep 10
./v4l2_raw_snap.sh 16 167 $1
sleep 10
./v4l2_raw_snap.sh 16 330 $1
sleep 10
./v4l2_raw_snap.sh 23 80 $1
sleep 10
./v4l2_raw_snap.sh 23 167 $1
sleep 10
./v4l2_raw_snap.sh 23 330 $1

