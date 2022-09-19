#!/bin/bash
# Deploy script for these server files
# this should make sure that the computer has all needed depenedncies
# by the end of this script you should have a fully working server 


# for reverse proxy to work
#docker network create nginx-proxy
#docker compose up -d --build


for i in ./sites/*
do
  echo "$i going up..."
  ( cd $i && docker compose up -d --build )
done

