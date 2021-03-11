#!/bin/bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t project4 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p8000:80 -it --rm project4