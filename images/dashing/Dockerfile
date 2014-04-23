FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com

RUN apt-get install -y rubygems curl
RUN gem install rvm
RUN curl -sSL https://get.rvm.io | bash
RUN /usr/local/rvm/bin/rvm install 1.9.3
##RUN gem install dashing
