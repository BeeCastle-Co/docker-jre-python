FROM openjdk:11-bullseye
MAINTAINER Hamish Rickerby <hamish@beecastle.com>
LABEL version="0.1.4"

RUN apt-get update
RUN apt-get install curl libpython3-dev python3-pip unzip -y
RUN pip3 install matplotlib numpy pandas scikit-learn
RUN curl https://download.newrelic.com/newrelic/java-agent/newrelic-agent/8.3.0/newrelic-java.zip -o /tmp/newrelic-java.zip
RUN unzip /tmp/newrelic-java.zip -d /tmp && rm /tmp/newrelic-java.zip
