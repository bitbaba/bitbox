#!/bin/bash 
wget -O - https://letsencrypt.org/certs/isrgrootx1.pem > root.pem
#cat intermediate.pem root.pem > full_chained.pem
