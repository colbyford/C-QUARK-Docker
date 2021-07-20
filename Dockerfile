FROM phusion/baseimage:0.9.16

MAINTAINER Colby T. Ford <colby.ford@uncc.edu>

# global env
ENV HOME=/home TERM=xterm

# set proper timezone
RUN echo America/New_York > /etc/timezone && sudo dpkg-reconfigure --frontend noninteractive tzdata

# Install essential for building
RUN \
  apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get -y autoremove && \
  apt-get install -y build-essential software-properties-common && \
  apt-get install -y git make

# install generic stuff for downloading other libraries 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git cmake wget

# Download C-QUARK base library
RUN cd /home && \
    mkdir cquark-user && \
    cd cquark-user/ && \
    wget https://zhanglab.ccmb.med.umich.edu/C-QUARK/download/C-QUARK-1.0.tar.bz2 && \
    tar -xvf C-QUARK-1.0.tar.bz2 && \
    rm C-QUARK-1.0.tar.bz2 && \
    mkdir ITLIB && \
    cp C-QUARK-1.0/download_lib.pl ITLIB/ && \
    perl ITLIB/download_lib.pl -libdir /home/cquark-user/ITLIB