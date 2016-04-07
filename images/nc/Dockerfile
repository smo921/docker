FROM alpine:latest

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
RUN apk update && apk add bash netcat-openbsd

ENTRYPOINT ["nc"]
