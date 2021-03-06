#!/bin/bash

# Source: https://gist.github.com/thbkrkr/aa16435cb6c183e55a33
openssl rand -base64 48 > passphrase.txt && \
    openssl genrsa -aes128 -passout file:passphrase.txt -out server.key 2048 && \
    openssl req -new -passin file:passphrase.txt -key server.key -out server.csr \
    -subj "/C=CA/O=ON/OU=Domain Control Validated/CN=*" && \
    cp server.key server.key.org && \
    openssl rsa -in server.key.org -passin file:passphrase.txt -out server.key && \
    openssl x509 -req -days 36500 -in server.csr -signkey server.key -out server.crt