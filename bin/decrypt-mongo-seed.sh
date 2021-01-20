#!/bin/sh

# To encrypt
# $ gpg --symmetric --cipher-algo AES256 my_secret.json

# gpg --symmetric --cipher-algo AES256 ../data/stores.js

gpg --quiet --batch --yes --decrypt --passphrase="$ENCRYPTION_KEY" --output ../data/stores.json ../data/stores.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$ENCRYPTION_KEY" --output ../data/stores.js ../data/stores.js.gpg