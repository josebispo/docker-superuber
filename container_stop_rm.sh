#!/bin/bash

clear;

sudo docker stop $1;

echo "Container stopped";

sudo docker rm $1;

echo "Container removed";

sudo docker-compose up -d

echo "Container Started";

sudo docker ps -a
echo "DONE DUDE!";