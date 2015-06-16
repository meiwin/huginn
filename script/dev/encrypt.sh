#!/bin/bash

echo ""
echo "Encrypting configuration files"
echo "----------------------------------"

CONFIG_DIR="./"

while [ -z "$GPG" ]; do
	read -r -s -p "GPG passphrase: " GPG
done

echo ${GPG} | gpg --batch --yes --no-tty --passphrase-fd 0 --symmetric -o ${CONFIG_DIR}/.env.gpg ${CONFIG_DIR}/.env
echo ""
