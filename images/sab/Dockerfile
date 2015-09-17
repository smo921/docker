FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
VOLUME ["/data"]

RUN DEBIAN_FRONTEND=noninteractive apt-get clean
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-add-repository ppa:jcfp/ppa
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y sabnzbdplus unrar-free

EXPOSE 8080

CMD ["-s", ":8080", "-f", "/data/sab/sabnzbd.ini"]
ENTRYPOINT ["sabnzbdplus"]
