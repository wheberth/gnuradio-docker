mkdir -p ~/gnuradio;
docker run\
    --device=/dev/dri \
    --device=/dev/snd \
    --privileged -v /dev/bus/usb:/dev/bus/usb \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/gnuradio:/home/gnuradio --ipc=host --net=host \
    -e DISPLAY="$DISPLAY" gnuradio \
    bash -c "source /pybombs/setup_env.sh; cd /home/gnuradio; gnuradio-companion";