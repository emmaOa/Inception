#!/bin/bash
openssl genpkey -algorithm RSA -out /etc/ssl/private.key
openssl req -new -key /etc/ssl/private.key -out /etc/ssl/csr.csr -subj "/C=US/ST=State/L=City/O=Organization/CN=CommonName"
openssl req -x509 -key /etc/ssl/private.key -in /etc/ssl/csr.csr -out /etc/ssl/certificate.crt

chmod 600 /etc/ssl/private.key
