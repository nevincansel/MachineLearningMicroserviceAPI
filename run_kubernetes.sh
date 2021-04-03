#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export dockerpath=udacityproject3

# Step 2
kubectl run --image=$dockerpath:latest --port=80 udacityproject3


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
kubectl port-forward udacityproject3 8000:80

