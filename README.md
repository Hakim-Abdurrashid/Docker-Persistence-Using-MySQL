# Docker-Persistence-Using-SQL

## Project Description
The aim of this project is to test a Docker Container's volume persistence when importing an image from Dockerhub to a host. This is done by using the project's Dockerfile to build an image named "sqlpersist" with the volume "my-dbb-volume" mounted to test if the volume data persists.

The image uses the latest official mysql image publihsed on [Dockerhub](https://hub.docker.com/_/mysql), this official image can be used in any docker container via:

`docker run --name your_container_name -d -e MYSQL_ROOT_PASSWORD=your_root_password -e MYSQL_DATABASE=your_database mysql:latest`

The Dockerfile is showcased below:


```
#use the latest mysql image available on docker hub

FROM mysql:latest

#copy "my-dbb-volume" volume

COPY ./my-dbb-volume/data /volume_persist/my-dbb-volume/:

#set mount point for a pre-created external mounted volume from host machine

VOLUME /volume_persist/my-dbb-volume/
```

## Build Time Metrics
![](https://i.imgur.com/bDo6JLG.png)

## Logs
![](https://i.imgur.com/LtbsKQn.png)
