#!/bin/bash
docker network create task2
docker run -d --name mysql --network task2 task2-db
docker run -d --name flask-app --network task2 task2-app
docker run -d -p 80:80 --network task2 --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf nginx
echo "Now stop and remove all containers, and redeploy with a docker volume mounted to the mysql container"
