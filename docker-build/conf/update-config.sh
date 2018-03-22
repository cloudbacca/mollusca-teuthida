#!/bin/bash

docker cp ./squid.conf.version1 squid-1:/etc/squid/squid.conf
docker exec squid-1 kill -HUP 45 
#docker kill -s HUP squid-1 
