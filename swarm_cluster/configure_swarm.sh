#!/bin/bash
name=$1
ip=$2
token=""

if [ "$name" = "Master" ]
then
  sudo docker swarm init --advertise-addr "$ip"
  echo "add the next command in the nodes"
  sudo docker swarm join-token worker | grep token | head -1  | sed "s/  //g"
fi


