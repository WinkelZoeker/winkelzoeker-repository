#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$ENCRYPTION_KEY" --output stores.json ../data/stores.json.gpg