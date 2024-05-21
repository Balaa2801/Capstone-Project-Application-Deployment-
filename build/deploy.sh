#!/bin/bash

# Navigate to the directory containing docker-compose.yml
cd "$(dirname "$0")"

# Pull the dev Docker image from Docker Hub and start the services
docker-compose up -d

