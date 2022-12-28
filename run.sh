#!/bin/bash
#
# Author: Duye Chen
#

if [ -z $1 ]; then
	echo "Usage: ./run.sh [DOMAIN_NAME]"
	exit
fi

DOMAIN_NAME=$1
PATH=$PATH
DIR=$(pwd)

########## Modify THIS SECTION #############
CERTBOT_EMAIL="<Email>"
DIGITALOCEAN_TOKEN="<DigitalOcean API Token>"
############################################

docker run -it --rm \
	-v "$DIR/ssl:/etc/letsencrypt" \
	-e DOMAIN_NAME=$DOMAIN_NAME \
	-e CERTBOT_EMAIL=$CERTBOT_EMAIL \
	-e DIGITALOCEAN_TOKEN=$DIGITALOCEAN_TOKEN \
	wildcard-certbot
