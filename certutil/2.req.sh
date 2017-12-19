#!/bin/bash

# /root/sandbox/var/www/html/.well-known/acme-challenge/
CHAN_DIR=/root/sandbox/var/www/html/.well-known/acme-challenge/

mkdir -p ${CHAN_DIR}

python acme_tiny.py --account-key ./account.key \
                    --csr ./domain.csr \
                    --acme-dir $CHAN_DIR > ./signed.crt
