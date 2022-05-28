#!/bin/bash

# usage
# ./restartContainers.sh [DB password]
# use same passwords as when initially calling rebuildContainers.sh

# EG:
# ./restartContainers.sh 123

clear; printf "\033[3J"
docker-compose stop
POSTGRES_PASSWORD=$1 docker-compose up --detach postgres
POSTGRES_PASSWORD=$1 docker-compose up --detach lucee
