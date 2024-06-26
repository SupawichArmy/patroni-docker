#!/bin/bash

# ------------ BUILD IMAGES ---------------------
# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni01 ." &
# ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni02 ." &
# ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni03 ." &

# ------------ BUILD DOCKER COMPOSE UP ----------
ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node1.yml down; docker compose -f docker-compose-node1.yml up -d --build" &
ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node2.yml down; docker compose -f docker-compose-node2.yml up -d --build" &
ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node3.yml down; docker compose -f docker-compose-node3.yml up -d --build" &

# ------------ DOCKER COMPOSE DOWN --------------
# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node1.yml down;" &
# ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node2.yml down;" &
# ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node3.yml down;" &
