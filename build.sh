#!/bin/bash

# build docker image.

docker build -t barabbas_db .

# launch application.

docker compose up -d