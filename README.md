Docker Wildcard Certbot
=================

Build
-----------

    ./build.sh

Usage
-----------

    docker run -it --rm \
        -v "$DIR/ssl:/etc/letsencrypt" \
        -e DOMAIN_NAME=<Your Domain Name> \
        -e CERTBOT_EMAIL=<Your email for certbot> \
        -e CLOUDFLARE_EMAIL=<Your cloudflare email> \
        -e CLOUDFLARE_API_KEY=<Your cloudflare api key> \
        wildcard-certbot

### Staging

    docker run -it --rm \
        -v "$DIR/ssl:/etc/letsencrypt" \
        -e MODE=staging \
        -e DOMAIN_NAME=<Your Domain Name> \
        -e CERTBOT_EMAIL=<Your email for certbot> \
        -e CLOUDFLARE_EMAIL=<Your cloudflare email> \
        -e CLOUDFLARE_API_KEY=<Your cloudflare api key> \
        wildcard-certbot
