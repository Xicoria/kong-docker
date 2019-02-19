#!/bin/bash

KONG_VERSION=1.0.3

rm -rf ./src/*

wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz"
tar -xzf kong.tar.gz -C ./src
rm -f kong.tar.gz

