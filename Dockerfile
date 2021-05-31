#
# Dockerfile for v2ray with WebSocket
#

FROM v2fly/v2fly-core

COPY config.json /etc/v2ray/config.json
COPY docker-entrypoint.sh /entrypoint.sh

ENV PATH /usr/bin/v2ray:$PATH
ENV PORT 8080
ENV UUID 00000000-0000-0000-0000-000000000000
ENV WSPATH /

EXPOSE $PORT/tcp

WORKDIR /etc/v2ray

ENTRYPOINT ["/entrypoint.sh"]

CMD ["v2ray", "-config=/etc/v2ray/config.json"]
