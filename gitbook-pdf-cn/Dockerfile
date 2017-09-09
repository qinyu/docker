FROM node:boron-slim
# Gitbook verison
ARG VERSION=3.2.3

LABEL version=$VERSION \
      maintainer="qinyusuain@gmail.com"

# Install Gitbook and Gitbook Commandline tools
RUN npm install --global gitbook-cli && \
    gitbook fetch ${VERSION} && \ 
    npm cache clear && \
    rm -rf /tmp/*

# Install Noto fonts and Calibre
RUN echo "deb http://http.debian.net/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends calibre fonts-noto fonts-noto-cjk && \
    rm -rf /var/lib/apt/lists/*

RUN fc-cache -f -v
