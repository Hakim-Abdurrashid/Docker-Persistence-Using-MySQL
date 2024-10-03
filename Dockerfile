#use the latest mysql image available on docker hub

FROM mysql:latest

#copy "my-dbb-volume" volume

COPY ./my-dbb-volume/data /volume_persist/my-dbb-volume/

#set mount point for a pre-created external mounted volume from host machine

VOLUME /volume_persist/my-dbb-volume/

