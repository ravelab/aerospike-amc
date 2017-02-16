FROM ubuntu

ENV BUILD_DEPS wget python python-dev gcc

RUN apt-get update -y && \
    apt-get install $BUILD_DEPS -y && \
    wget --content-disposition http://www.aerospike.com/download/amc/3.6.13/artifact/ubuntu12 && \
    dpkg -i aerospike-amc-community-3.6.13.all.x86_64.deb

CMD ["/bin/bash", "-c", "/etc/init.d/amc start && tail -f /var/log/amc/aerospike_amc.log"]
