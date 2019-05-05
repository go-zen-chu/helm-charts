#!/usr/bin/env bash

set -eux

# deploy concourse via helm
helm install --name concourse --tiller-namespace tiller-world ../static/concourse

kubectl apply -f ingress.yml
kubectl get ingress --all-namespaces
kubectl get services --all-namespaces

helm list --tiller-namespace tiller-world
# NAME            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE
# concourse       1               Fri May  3 16:33:22 2019        DEPLOYED        concourse-6.0.0 5.1.0           default
