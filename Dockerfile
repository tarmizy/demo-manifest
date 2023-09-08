FROM ubuntu
RUN apt-get update -y && apt-get install curl -y
# Install Kaniko
RUN curl -Lo /usr/bin/kaniko https://github.com/GoogleContainerTools/kaniko/releases/download/v1.7.0/kaniko-linux-amd64 && \
    chmod +x /usr/bin/kaniko
RUN apt-get install git -y