FROM jenkins:2.60.2-alpine
ARG VERSION=2.60.2-alpine

LABEL version=$VERSION \
      maintainer="qinyusuain@gmail.com"

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
 
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
 
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
