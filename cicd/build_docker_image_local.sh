#!/bin/bash
# Use this during development
cd ..
docker build --no-cache -t cicd:npm-sbox .
docker tag cicd:npm-sbox registry:5000/npm-sbox:latest
docker push registry:5000/npm-sbox:latest
docker rmi cicd:npm-sbox
