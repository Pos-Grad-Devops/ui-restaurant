#!/bin/bash

kubectl apply -f front/front-namespace.yml 
kubectl apply -f front/front-configmap.yml 
kubectl apply -f front/front-deployment.yml
kubectl apply -f front/front-service.yml  