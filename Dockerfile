FROM adoptopenjdk/openjdk11:jdk-11.0.11_9
MAINTAINER Hamish Rickerby <hamish@beecastle.com>
LABEL version="0.1.0"

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install libpython3.6-dev python3-pip -y
RUN pip3 install matplotlib numpy pandas sklearn
