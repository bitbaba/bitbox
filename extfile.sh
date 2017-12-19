#!/bin/bash

cat <<__heredoc > /tmp/1.extfile
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid:always,issuer
basicConstraints=CA:true
keyUsage = keyCertSign, cRLSign
extendedKeyUsage=anyExtendedKeyUsage 
nsCertType = sslCA #emailCA
subjectAltName=DNS:*.bitbaba.com #URI:https://bitmail.bitbaba.com/
issuerAltName=DNS:*.bitbaba.com  #URI:https://bitmail.bitbaba.com/
__heredoc


openssl genrsa -out /etc/apache2/ssl/bitmail.bitbaba.com-site.key 1024

openssl req -new -key /etc/apache2/ssl/bitmail.bitbaba.com-site.key -subj "/CN=bitmail.bitbaba.com/O=bitmail.bitbaba.com" -out /tmp/cacsr.pem

openssl x509 -req -in /tmp/cacsr.pem -extfile /tmp/1.extfile -signkey /etc/apache2/ssl/bitmail.bitbaba.com-site.key -days 36500 -out /etc/apache2/ssl/bitmail.bitbaba.com-site.crt

rm -rf /tmp/cacsr.pem /tmp/1.extfile
