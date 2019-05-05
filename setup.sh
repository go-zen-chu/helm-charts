#!/bin/sh

set -eux

kubectl create namespace tiller-world

# make rbac config for helm tiller
kubectl create -f rbac-config.yaml
