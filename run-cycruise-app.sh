#!/usr/bin/env bash

docker build -t cycruise-app .

docker compose -f dev-compose.yml up -d