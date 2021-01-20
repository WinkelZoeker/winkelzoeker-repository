#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$ENCRYPTION_KEY" --output ../data/stores.json ../data/stores.json.gpg