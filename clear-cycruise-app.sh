#!/usr/bin/env bash

docker image rm cycruise-app
docker volume rm cycruise_mariadb_data
echo "done"