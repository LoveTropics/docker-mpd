# Dockerfile for mpd

FROM alpine
MAINTAINER philipwold

RUN apk add --no-cache mpd
COPY mpd.conf /etc/mpd.conf
VOLUME /var/lib/mpd

CMD ["mpd", "--stdout", "--no-daemon"]
