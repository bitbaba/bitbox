#!/bin/bash 
wget -O - https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.pem > intermediate.pem
#cat signed.crt intermediate.pem > chained.pem
