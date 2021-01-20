#!/usr/bin/env bash

set -e


echo 'Decrypting file...'
./decrypt-mongo-seed.sh
echo 'Done!'


# Set the environment (Database, MQTT, etc)
echo -ne "Building docker-compose stack..." 
# docker-compose -f ./stack/docker-compose.yml up -d  > /dev/null 2>&1
docker-compose -f ../stack/docker-compose.yml up -d
echo "done!" 


# Wait until mongo logs that it's ready (or timeout after 60s)
COUNTER=0
while !(nc -z localhost 27017) && [[ $COUNTER -lt 60 ]] ; do
    sleep 2
    let COUNTER+=2
    echo "Waiting for mongo to initialize... ($COUNTER seconds so far)..."
done


