#!/bin/bash
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
ip=$ip docker-compose up -d
