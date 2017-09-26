FROM jenkins/jenkins:lts-alpine
ARG VERSION=lts-alpine

LABEL version=$VERSION \
    maintainer="qinyusuain@gmail.com"

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
# RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --no-cache docker shadow
RUN gpasswd -a jenkins docker

USER jenkins