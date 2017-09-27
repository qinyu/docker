#!/bin/bash -x

DOCKER_SOCKET=/var/run/docker.sock
DOCKER_GROUP=docker
JENKINS_USER=jenkins

ls -al ${DOCKER_SOCKET}

if [ -S ${DOCKER_SOCKET} ]; then
    echo "Grant docker socket access"
    DOCKER_GID=$(stat -c '%g' ${DOCKER_SOCKET})
    sudo groupadd -fr -g ${DOCKER_GID} ${DOCKER_GROUP}
    sudo usermod -aG ${DOCKER_GROUP} ${JENKINS_USER}
    groups jenkins
fi