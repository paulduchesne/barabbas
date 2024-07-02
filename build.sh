#!/bin/bash

# build api image.
docker build -t barabbas-api -f dockerfile-api .
docker build -t barabbas-app -f dockerfile-app .

# deploy system.
docker compose up -d