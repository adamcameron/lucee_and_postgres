#!/bin/bash

# usage
# ./rebuildContainers.sh [lucee admin password] [DB password]
# EG:
# ./rebuildContainers.sh 12345 123

clear; printf "\033[3J"
docker-compose down --remove-orphans --volumes
LUCEE_PASSWORD=$1 docker-compose build --no-cache
POSTGRES_PASSWORD=$2 docker-compose up --force-recreate --detach
