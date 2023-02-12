FROM alpine:edge


RUN apk add --no-cache \
        mpc \
        mpd \
        sqlite-libs

COPY start.sh /
RUN chmod u+x /start.sh

CMD ["/start.sh"]
