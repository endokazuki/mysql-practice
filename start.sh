#!/bin/sh
if [ ! -d "./db/data" ]; then
  mkdir ./db/data
  chmod 777 ./db/data
  docker-compose up -d
  # wait for db to start
  sleep 30
  docker-compose exec db sh 'tmp/container-init.sh'
else
  docker-compose up -d
fi