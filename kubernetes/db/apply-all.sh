#!/bin/bash

kubectl apply -f db/db-namespace.yml
kubectl apply -f db/db-configmap.yml 
kubectl apply -f db/db-init-scripts-configmap.yml 
kubectl apply -f db/db-pvc.yml 
kubectl apply -f db/db-deployment.yml
kubectl apply -f db/db-service.yml  