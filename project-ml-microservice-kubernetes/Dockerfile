FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /project

## Step 2:
# Copy source code to working directory
RUN git clone https://github.com/zutils/DevOps_Microservices.git

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
WORKDIR /project/DevOps_Microservices/project-ml-microservice-kubernetes/
ENV VIRTUAL_ENV=~/devops
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN make install

# Get dependencies
RUN wget https://github.com/hadolint/hadolint/releases/download/v1.23.0/hadolint-Linux-x86_64
RUN cp ./hadolint-Linux-x86_64 /usr/bin/hadolint
RUN chmod +x /usr/bin/hadolint
RUN apt update
RUN apt -y install python3-flask python3-pandas python3-sklearn
RUN pip install pylint

# Run lint test!
RUN make lint

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD python3 ./app.py
