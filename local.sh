#!/bin/bash

# # ------------ SWICH BRANCH ----------

# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; git checkout poc" &
# ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; git checkout poc" &
# ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; git checkout poc" &

# ------------ BUILD IMAGES ---------------------

# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni1 -f Dockerfile-node1 ." &
# ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni2 -f Dockerfile-node2 ." &
# ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni3 -f Dockerfile-node3 ." &

# ------------ HAPROXY ----------

# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-haproxy.yml up -d --build " &

# ------------ BUILD DOCKER COMPOSE UP ----------

ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni1 -f Dockerfile-node1 .; docker compose -f docker-compose-node1.yml down; docker compose -f docker-compose-node1.yml up -d --build " &
ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni2 -f Dockerfile-node2 .; docker compose -f docker-compose-node2.yml down; docker compose -f docker-compose-node2.yml up -d --build " &
ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker build -t patroni3 -f Dockerfile-node3 .; docker compose -f docker-compose-node3.yml down; docker compose -f docker-compose-node3.yml up -d --build " &

# ------------ BUILD DOCKER COMPOSE DOWN ----------
#
#ssh adminn01@10.1.3.19 "cd ~/patroni-docker; docker compose -f docker-compose-node1.yml down; " &
#ssh adminn02@10.1.3.22 "cd ~/patroni-docker; docker compose -f docker-compose-node2.yml down; " &
#ssh adminn03@10.1.3.24 "cd ~/patroni-docker; docker compose -f docker-compose-node3.yml down; " &
