FROM intelopencl/intel-opencl:ubuntu-20.10-ppa
ARG TZ=Europe/Berlin
RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip python3-apt apt-utils ocl-icd-opencl-dev
RUN pip3 install --upgrade pip
RUN pip3 install pybombs
RUN pybombs auto-config
RUN pybombs config makewidth 2
RUN pybombs recipes add-defaults
RUN pybombs prefix init /pybombs -R gnuradio38
RUN pybombs install gqrx rtl-sdr gr-osmosdr gr-iio gr-fosphor gr-tutorial
RUN pybombs config makewidth 2