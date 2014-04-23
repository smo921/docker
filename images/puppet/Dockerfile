FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com

RUN wget -O /tmp/puppetlabs-release-precise.deb https://apt.puppetlabs.com/puppetlabs-release-precise.deb 2>&1
RUN dpkg -i /tmp/puppetlabs-release-precise.deb

RUN apt-get -y update
