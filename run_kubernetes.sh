#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nickyasaph/nick-microproject:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run nick-microproject \
    --image=nickyasaph/nick-microproject:v1.0.0 \
    --port=80 --labels app=nick-microproject


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward nick-microproject 8000:80

