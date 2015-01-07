FROM smo921/apache-php
MAINTAINER Steve Oberther stephenoberther@gmail.com
ENV REFRESHED_AT 2014-10-29
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y install php5-mysql php5-gd php5-curl

ADD ./config/php.ini /etc/php5/apache/php.ini
ADD ./config/apache-lychee.conf /etc/apache2/conf-enable/lychee.conf

RUN git clone https://github.com/electerious/Lychee.git /var/www/Lychee
RUN chmod -R 777 /var/www/Lychee/uploads /var/www/Lychee/data

VOLUME ["/var/www/Lychee/uploads"]
VOLUME ["/var/www/Lychee/data"]
