#! /bin/bash

docker network create withkid-bridge
( docker-compose -f ./infrastructure/docker-compose.yml up -d && \
docker-compose -f ./application/docker-compose.yml up -d )

docker ps