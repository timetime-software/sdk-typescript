#!/usr/bin/env bash

docker run --rm \
    -v "$PWD":/local openapitools/openapi-generator-cli generate \
    -i https://api.timetime.in/v3/api-docs \
    -g typescript \
    -c /local/generator-config.json \
    -o /local/src
