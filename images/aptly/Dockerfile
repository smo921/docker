FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
VOLUME ["/repos"]

RUN echo "deb http://repo.aptly.info/ squeeze main" >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv-keys 2A194991
RUN gpg -a --export 2A194991 | apt-key add -

RUN apt-get update
RUN apt-get install -y aptly nginx
ADD files/aptly.conf /.aptly.conf
ADD files/nginx.conf /etc/nginx.conf
