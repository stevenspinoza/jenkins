#!/bin/sh
echo "Custom Script For Linux Extension...INIT"
docker version
sudo apt update
sudo su
docker run --name jk -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock  -v $(which docker):/usr/bin/docker jenkins/jenkins:lts
docker exec -u 0 -it jk bash
chmod 666 /var/run/docker.sock
exit
echo "Custom Script For Linux Extension...EXIT"