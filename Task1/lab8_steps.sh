#!/bin/bash
docker build -t task1-app .
docker build -t task1-nginx -f Dockerfile_nginx .
docker network create new-network
docker run -d --network new-network --name flask-app task1-app
docker run -d --network new-network -p 80:80 --name nginx task1-nginx
echo "App and proxy deployed: open http://localhost:80 in a browser to see the app. Press any key to continue"
read input
docker stop flask-app nginx
docker rm flask-app nginx
