#!/bin/bash

sudo chown -R "${USER}":"${USER}" "$1"

git -C "$1" checkout -- .
git -C "$1" clean -fd

docker compose exec web setfacl -R -m u:www-data:rwx app/tmp
docker compose exec web setfacl -R -d -m u:www-data:rwx app/tmp
docker compose exec web setfacl -R -m u:www-data:rwx app/logs
docker compose exec web setfacl -R -d -m u:www-data:rwx app/logs

mysql -u "$2" -p"$3" -h "$4" -P "$5" -e "drop database if exists $6; create database $6"

mysql -u "$2" -p"$3" -h "$4" -P "$5" symf001 < ./db-schema.sql

docker compose exec web app/bin/cake bake all --everything
