#!/bin/bash

kubectl apply -f back/back-namespace.yml 
kubectl apply -f back/back-configmap.yml 
kubectl apply -f back/back-deployment.yml
kubectl apply -f back/back-service.yml  