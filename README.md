# helm-charts

helm charts customization for my environment.


## setup

First you need to create k8s cluster via GKE.

Then first create new namespace for helm tiller.

```
./setup.sh
```

## setup charts

Each charts are fetched in static/\<deployment\> and there setup scripts are located in \<deployment\>/ directory.

```
cd <deployment>
./setup.sh
```
