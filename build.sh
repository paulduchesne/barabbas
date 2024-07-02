#!/bin/bash

# build api image.
docker build -t barabbas-api -f dockerfile-api .

# deploy system.
docker compose up -d