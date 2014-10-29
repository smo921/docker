FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
VOLUME ["/git-repos"]
VOLUME ["/apache-log"]

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 php5 php5-json
RUN wget -O - https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin
RUN git clone https://github.com/klaussilveira/gitlist.git /var/www/gitlist

WORKDIR /var/www/gitlist
RUN php /usr/local/bin/composer.phar install

VOLUME ["/var/www/gitlist/cache"]
ADD ./files/gitlist-config.ini /var/www/gitlist/config.ini
ADD ./files/apache-gitlist.conf /etc/apache2/conf-enabled/gitlist.conf
ADD ./files/php.ini /etc/php5/apache/php.ini

RUN /usr/sbin/a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /apache-log
ENV APACHE_LOCK_DIR /var/run/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
