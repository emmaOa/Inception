#!/bin/bash

set timeout 10
service mariadb start
mysql_secure_installation <<EOF

y
root
root
y
y
y
y
EOF

mariadb

