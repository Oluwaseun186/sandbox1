#!/bin/bash

# make sure Docker is installed on the computer 

# Install it if it does not exist

## Run some Docker commands
sudo docker build -t cyclo-devops-sandbox .

sudo docker run -it -p 