#!/bin/bash

# git commit -am 'debug2'
# git push

# ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node1.yml up -d --build" &
# ssh adminn02@10.1.3.22 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node2.yml up -d --build" &
# ssh adminn03@10.1.3.24 "cd ~/patroni-docker; git fetch ; git pull; docker compose -f docker-compose-node3.yml up -d --build" &



# git commit -am 'debug2'
# git push
# scp ./docker-compose-node1.yml adminn01@10.1.3.19:~/patroni-docker
# scp ./docker-compose-node2.yml adminn02@10.1.3.22:~/patroni-docker
# scp ./docker-compose-node3.yml adminn03@10.1.3.24:~/patroni-docker

scp ./docker-compose-node1.yml adminn01@10.1.3.19:~/patroni-docker; ssh adminn01@10.1.3.19 "cd ~/patroni-docker; docker compose -f docker-compose-node1.yml up -d --build" &
scp ./docker-compose-node2.yml adminn02@10.1.3.22:~/patroni-docker; ssh adminn02@10.1.3.22 "cd ~/patroni-docker; docker compose -f docker-compose-node2.yml up -d --build" &
scp ./docker-compose-node3.yml adminn03@10.1.3.24:~/patroni-docker; ssh adminn03@10.1.3.24 "cd ~/patroni-docker; docker compose -f docker-compose-node3.yml up -d --build" &
