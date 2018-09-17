#!/bin/bash

#Use pwd command below (as it is now) or set absolute paths

docker run -d --env-file .env \
--name lenj -p 80:80 -p 443:443 \
-v `pwd`/data/letsencrypt/:/etc/letsencrypt/ \
-v `pwd`/data/letsencrypt/acme:/data/letsencrypt/ \
-v `pwd`/data/jenkins:/var/jenkins_home \
lenj
