#!/bin/bash

# Change directory to the location of the docker-compose.yml file
cd "$(dirname "$0")" || exit

# Build Docker image
docker-compose build

