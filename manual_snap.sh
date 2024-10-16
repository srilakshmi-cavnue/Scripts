# $1 = analog gain, $2 = exp in ms, $3 = filename
# num-buffers=1 default [can be increased for AEC to converge]
# for reference - 16,700,000 ns = 16.7ms
# To call this script -> ./manual_snap.sh 1 167 img1 , 8, 33

gst-launch-1.0 nvarguscamerasrc silent=false sensor-id=0 num-buffers=1 ee-mode=0 tnr-mode=0 tnr-strength=0 aeantibanding=0 wbmode=0 gainrange="$1 $1" saturation=1 exposurecompensation=0 exposuretimerange="$2000000 $2000000" ispdigitalgainrange="1 1" ! "video/x-raw(memory:NVMM),width=3840,height=2160,framerate=(fraction)10/1" ! nvvidconv flip-method=0 ! pngenc ! filesink location="Snap_$3_$1x_$2ms.png"

