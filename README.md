# Docker Wildcard Certbot

Get Let's Encrypt wildcard SSL certificates validated by DNS challenges.

**NOTE**

This project only supports DigitalOcean DNS challenges.

It was forked from https://github.com/single9/docker-wildcard-letsencrypt

## Usage

    docker pull dkarter/letsencrypt-wildcard-digitalocean

    docker run -it --rm \
        -v "$DIR/ssl:/etc/letsencrypt" \
        -e DOMAIN_NAME=<Your Domain Name> \
        -e CERTBOT_EMAIL=<Your email for certbot> \
        -e DIGITALOCEAN_TOKEN=<digital ocean api token> \
        -e SLACK_WEBHOOK=https://hooks.slack.com/services/XXXXXX/XXXXXX/XXXXXXXXXXXXXX \
        -e SLACK_WEBHOOK_CHANNEL=<SLACK_CHANNEL> \
        dkarter/letsencrypt-wildcard-digitalocean

Example

    docker run -it --rm \
        -v "$DIR/ssl:/etc/letsencrypt" \
        -e DOMAIN_NAME=example.com \
        -e CERTBOT_EMAIL=duye@example.com \
        -e DIGITALOCEAN_TOKEN=doc_xxxx \
        dkarter/letsencrypt-wildcard-digitalocean

### Reload NGINX Container

If you want to reload the Nginx container after Certbot is finished,
add the environment variable `NGINX_CONTAINER_NAME`.

    docker run -it --rm \
        -v "$DIR/ssl:/etc/letsencrypt" \
        -v /var/run/docker.sock:/var/run/docker.sock
        -e DOMAIN_NAME=<Your Domain Name> \
        -e DIGITALOCEAN_TOKEN=<digital ocean api token> \
        dkarter/letsencrypt-wildcard-digitalocean
