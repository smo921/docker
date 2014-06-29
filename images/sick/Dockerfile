FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
VOLUME ["/data"]

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-cheetah
RUN git clone git://github.com/midgetspy/Sick-Beard.git /sickbeard

EXPOSE 8081

CMD ["--datadir", "/data/sick/"]
ENTRYPOINT ["/usr/bin/python", "/sickbeard/SickBeard.py"]
