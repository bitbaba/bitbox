#!/bin/bash
#openssl ecparam -genkey -name secp384r1 | openssl ec -out domain.key
openssl genrsa 4096 > account.key 
openssl genrsa 4096 > domain.key

cp -Lf /etc/ssl/openssl.cnf ./domain.cnf

cat <<_heredoc >> ./domain.cnf
[SAN]
_heredoc

echo -n "subjectAltName=DNS:bitbaba.com"   >> domain.cnf
echo -n ",DNS:www.bitbaba.com"             >> domain.cnf
echo -n ",DNS:bintray.bitbaba.com"         >> domain.cnf
echo -n ",DNS:brainwallet.bitbaba.com"     >> domain.cnf
echo -n ",DNS:bank.bitbaba.com"            >> domain.cnf
echo -n ",DNS:pay.bitbaba.com"             >> domain.cnf
echo -n ",DNS:pool.bitbaba.com"            >> domain.cnf
echo -n ",DNS:bitgold.bitbaba.com"         >> domain.cnf
echo -n ",DNS:bitmail.bitbaba.com"         >> domain.cnf
echo -n ",DNS:miner.bitbaba.com"           >> domain.cnf
echo -n ",DNS:ex.bitbaba.com"              >> domain.cnf

openssl req -new -sha256 -key domain.key -subj "/CN=bitbaba.com/O=BITBABA.COM/S=Shanghai/C=CN" -reqexts SAN -config ./domain.cnf > domain.csr

