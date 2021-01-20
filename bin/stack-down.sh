#!/usr/bin/env bash

set -e

# Set the environment (Database, MQTT, etc)
echo -ne "Stoping docker-compose stack..." 
docker-compose -f ../stack/docker-compose.yml down
echo "done!" 
