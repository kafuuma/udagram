#!/bin/bash

set -e

# Trick to get directory that script is located in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

export KUBECONFIG=../../infrastructure/udagram-kubeconfig

kubectl apply -f $DIR/backend-feed-deployment.yaml

kubectl apply -f $DIR/backend-user-deployment.yaml

kubectl apply -f $DIR/reverseproxy-deployment.yaml

kubectl apply -f $DIR/frontend-deployment.yaml