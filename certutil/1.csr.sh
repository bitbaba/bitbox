#!/bin/bash
openssl ecparam -genkey -name secp384r1 | openssl ec -out domain.key

cp /etc/ssl/openssl.cnf ./domain.cnf
cat <<_heredoc >> ./domain.cnf
[SAN]
subjectAltName=DNS:bitbaba.com,DNS:www.bitbaba.com,DNS:bank.bitbaba.com,DNS:pay.bitbaba.com,DNS:pool.bitbaba.com,DNS:bitgold.bitbaba.com,DNS:bitmail.bitbaba.com,DNS:miner.bitbaba.com,DNS:ex.bitbaba.com
_heredoc

openssl req -new -sha256 -key domain.key -subj "/" -reqexts SAN -config ./domain.cnf > domain.csr

