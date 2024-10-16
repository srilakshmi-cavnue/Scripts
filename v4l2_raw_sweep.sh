#$1 - filename

./v4l2_raw_snap.sh 8 8 $1
sleep 10
./v4l2_raw_snap.sh 8 16 $1
sleep 10
./v4l2_raw_snap.sh 8 33 $1
sleep 10
./v4l2_raw_snap.sh 16 8 $1
sleep 10
./v4l2_raw_snap.sh 16 16 $1
sleep 10
./v4l2_raw_snap.sh 16 33 $1
sleep 10
./v4l2_raw_snap.sh 23 8 $1
sleep 10
./v4l2_raw_snap.sh 23 16 $1
sleep 10
./v4l2_raw_snap.sh 23 33 $1

