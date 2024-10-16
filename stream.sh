#Streaming over tcp

gst-launch-1.0 nvarguscamerasrc sensor-id=0 sensor-mode=1 tnr-mode=0 tnr-strength=0 ee-mode=0 aeantibanding=0 saturation=1 exposurecompensation=0 exposuretimerange="100000 358733000" ! "video/x-raw(memory:NVMM),width=(int)3840,height=(int)2160,framerate=(fraction)10/1,format=(string)NV12" ! queue ! nvv4l2h264enc maxperf-enable=1 bitrate=8000000 insert-sps-pps=1 control-rate=0 preset-level=2 ! h264parse config-interval=-1 ! mpegtsmux ! tcpserversink port=5000 host=0.0.0.0 &

