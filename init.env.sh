#!/bin/bash

# init .env file 

touch .env

env_vars=("MYSQL_ROOT_PASSWORD" "MYSQL_PASSWORD")

cat > .env << EOF
WORDPRESS_DB_HOST=db-church:3306
WORDPRESS_DB_USER=wordpress
WORDPRESS_DB_PASSWORD=wordpress
WORDPRESS_DB_NAME=wordpress
WORDPRESS_VERSION=5.7.1
MYSQL_VERSION=5.7
MYSQL_DATABASE=wordpress
MYSQL_DATABASE=wordpress
PMA_HOST=db-church
EOF

for var in "${env_vars[@]}"
do
  echo "$var=$(openssl rand -base64 32 | sha256sum | base64 | head -c 32 ; echo)" >> .env
done