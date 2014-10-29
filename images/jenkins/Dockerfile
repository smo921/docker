FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com


RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

RUN apt-get update
RUN mkdir /var/run/jenkins
RUN apt-get install -y jenkins
ADD run /usr/local/bin/
EXPOSE 8080
VOLUME ["/var/lib/jenkins"]
CMD /usr/local/bin/run
