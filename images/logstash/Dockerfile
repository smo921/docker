FROM ubuntu:14.04
MAINTAINER Steve Oberther <stephenoberther@gmail.com>
ENV REFRESHED_AT 2014-09-14
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq update
RUN apt-get -yqq install wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch |  apt-key add -
RUN echo 'deb http://packages.elasticsearch.org/logstash/1.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
RUN apt-get -yqq update
RUN apt-get -yqq install logstash

RUN mkdir /opt/logstash/conf
ADD run.sh /opt/logstash/bin/run.sh
ADD templates /opt/logstash/templates
WORKDIR /opt/logstash

EXPOSE 514

CMD [ "bin/run.sh" ]

