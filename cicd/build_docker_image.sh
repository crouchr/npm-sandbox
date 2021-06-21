#!/bin/bash
cd ..
docker build --no-cache -t cicd:npm-sbox .
docker tag cicd:npm-sbox registry:5000/npm-sbox:$VERSION
docker push registry:5000/npm-sbox:$VERSION
docker rmi cicd:npm-sbox
