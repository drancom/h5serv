#!/bin/bash
# entrypoint for Docker container
cd /usr/local/src/h5serv/server
python app.py $@ # --datapath=/data --domain=data.byoungkwonapi.com --log_file=
