#!/usr/bin/env bash

ssh adminn01@10.1.3.19 "cd ~/patroni-docker; git fetch ; git pull; cd HAProxy ; docker compose up -d --build"
