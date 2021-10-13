FROM openjdk:11-buster
MAINTAINER Hamish Rickerby <hamish@beecastle.com>
LABEL version="0.1.1"

RUN apt-get update
RUN apt-get install libpython3.7-dev python3-pip -y
RUN pip3 install matplotlib numpy pandas sklearn
RUN curl -o /tmp/newrelic-java.zip -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip
RUN unzip /tmp/newrelic-java.zip -d /tmp && rm /tmp/newrelic-java.zip
