FROM certbot/certbot

RUN apk -U upgrade \
    && apk add curl bash \
    iptables \
    ca-certificates \
    e2fsprogs \
    docker \
    && pip install certbot-dns-digitalocean \
    && rm -rf /var/cache/apk/*

COPY ./gen-ssl.sh /gen-ssl.sh

ENTRYPOINT [ "/gen-ssl.sh" ]
