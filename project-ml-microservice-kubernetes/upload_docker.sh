#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

docker login

# Step 1:
# Create dockerpath
dockerpath=jzypo/udacity:project4 #<your docker ID/path>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag project4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
