#!/bin/sh

set -e

echo 'Generating mongodb image with seed'


echo 'Decrypting file...'
./decrypt-mongo-seed.sh
echo 'Done!'


docker build -t winkelzoeker/winkelzoeker-db -f ../containers/winkelzoeker-mongo.dockerfile .

echo 'Deleting secret file.'
# rm stores.json 2> /dev/null

echo 'Image built successfully.'
