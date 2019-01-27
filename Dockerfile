FROM busybox
MAINTAINER Alan Chen<alan.chen@ravelab.com>
# folked from Amanpreet Singh<aps.sids@gmail.com>, just updating the AMC_VERSION

ENV AMC_VERSION 4.0.22
RUN wget -O aerospike-amc-community-${AMC_VERSION}-linux.tar.gz https://www.aerospike.com/download/amc/${AMC_VERSION}/artifact/linux && \
    tar xvzf aerospike-amc-community-${AMC_VERSION}-linux.tar.gz && \
    rm -rf aerospike-amc-community-${AMC_VERSION}-linux.tar.gz

EXPOSE 8081

CMD ["/opt/amc/amc"]

