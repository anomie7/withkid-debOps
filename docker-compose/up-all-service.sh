#! /bin/bash

docker stack deploy -c docker-compose.yml withkid
docker stack ps withkid