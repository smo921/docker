FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
ENV REFRESHED_AT 2014-10-29
ENV DEBIAN_FRONTEND noninteractive
VOLUME ["/apache-log"]
VOLUME ["/apache-cache"]

RUN apt-get -yqq update
RUN apt-get install -y apache2 php5 php5-json libapache2-mod-php5
RUN wget -O - https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin

ADD ./files/php.ini /etc/php5/apache/php.ini

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /apache-log
ENV APACHE_RUN_DIR /apache-cache
ENV APACHE_LOCK_DIR /var/run/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
