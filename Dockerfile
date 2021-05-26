FROM alpine:edge

RUN apk add --update-cache \
      openssh-client \
      ca-certificates \
      bash && \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
      corkscrew

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
