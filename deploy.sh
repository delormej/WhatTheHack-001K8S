#!/bin/bash
docker build -f content-api/Dockerfile -t jasondel/content-api ./content-api
docker build -f content-web/Dockerfile -t jasondel/content-web ./content-web 

#create the network so containers can talk to eachother on 172.x.x.x
docker network create fabmedical

docker run -d -p 3001:3001 --network fabmedical jasondel/content-api
docker run -d -p 3000:3000 --network fabmedical jasondel/content-web
