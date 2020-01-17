#!/bin/bash

set -e

#get the directory the script is located in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker-compose -f ${DIR}/docker-compose-build.prod.yaml push