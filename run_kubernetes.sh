#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nevincansel/udacityproject3

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run udacityproject3\
    --image=$dockerpath\
    --port=80 --labels app=udacityproject3

# Step 3:
# List kubernetes pods
kubectl get pods

echo "Sleeping for 10 seconds while waiting for pod to come up."
sleep 10

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject3 8000:80

