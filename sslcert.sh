#!/bin/bash
# https://stackoverflow.com/questions/27294589/creating-self-signed-certificate-for-domain-and-subdomains-neterr-cert-commo

openssl req -x509 \
	-nodes \
	-days 365 \
	-newkey rsa:2048 \
	-keyout /etc/apache2/ssl/apache.key \
	-out /etc/apache2/ssl/apache.crt
