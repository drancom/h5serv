FROM dran/h5serv-pkg:0.1.0
MAINTAINER Byoungkwon An <kwon.an@autodesk.com>

RUN mkdir -p /usr/local/src/h5serv
WORKDIR /usr/local/src/h5serv
COPY server server
COPY util util
COPY test test
COPY data /data
RUN  cp /usr/local/src/hdf5-json/data/hdf5/tall.h5 /data ; \
     ln -s /data
RUN mkdir /log

EXPOSE 5000

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--datapath=/data","--domain=data.byoungkwonapi.com","--log_file="]
