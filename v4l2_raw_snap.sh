#$1 = gain, $2 = exp in us, $3 = filename

#Set sensor mode, resolution and pixel format
v4l2-ctl -v width=3840,height=2160,pixelformat='RG10' -c sensor_mode=1

#Capture raw image
v4l2-ctl -d /dev/video0 --set-fmt-video=width=3840,height=2160,pixelformat=RG10 --set-ctrl bypass_mode=0 --set-ctrl gain="$1" --set-ctrl exposure="$200" --set-ctrl frame_rate=10000000 --stream-mmap --stream-count=1 --stream-to="Snap_$3_$1x_$200us.raw" --verbose

