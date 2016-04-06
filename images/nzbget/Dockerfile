FROM alpine:latest

RUN apk update && apk add wget
RUN wget -O /usr/local/bin/dumb-init --no-check-certificate \
  https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64
RUN chmod +x /usr/local/bin/dumb-init

RUN wget -O - http://nzbget.net/info/nzbget-version-linux.json | \
    sed -n "s/^.*stable-download.*: \"\(.*\)\".*/\1/p" | \
    wget --no-check-certificate -i - -O nzbget-latest-bin-linux.run || \
    echo "*** Download failed ***"
RUN sh nzbget-latest-bin-linux.run
COPY nzbget.conf /nzbget.conf
EXPOSE 6789
VOLUME /data
CMD ["/usr/local/bin/dumb-init", "/nzbget/nzbget", "-s", "-o",\
  "outputmode=log", "-c", "/nzbget.conf"]
