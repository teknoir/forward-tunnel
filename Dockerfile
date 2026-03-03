FROM alpine:edge

RUN apk add --update-cache \
      openssh-client \
      ca-certificates \
      bash && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
