FROM ubuntu:latest

LABEL maintainer="Daniel Townend <dan.townend@gmail.com>"

ENV server_name "My Server"
ENV port 50000
ENV maxclients 200

WORKDIR /

RUN apt-get update && \
apt-get install default-jre wget -y && \
wget http://downloads.cncnet.org/cncnet-tunnel.exe

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
