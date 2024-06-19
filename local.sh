#!/bin/bash

git commit -am 'debug2'; git push

ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node1.yml up -d" &
ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node2.yml up -d" &
ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node3.yml up -d" &