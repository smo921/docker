FROM smo921/base
MAINTAINER Steve Oberther stephenoberther@gmail.com
VOLUME ["/data"]

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer

EXPOSE 5050

CMD ["/CouchPotatoServer/CouchPotato.py"]
