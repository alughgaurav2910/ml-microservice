#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=y3key/ml-microservice:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image $dockerpath ml-app --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/ml-app 8000:80
