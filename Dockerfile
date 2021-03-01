FROM golang:alpine
RUN apk add --no-cache libc6-compat
WORKDIR /root
RUN wget -P /usr/bin/ https://s3.eu-west-2.amazonaws.com/nexus-cli/1.0.0-beta/linux/nexus-cli 
RUN chmod +x /usr/bin/nexus-cli
COPY credentials.sh /opt/
ENV NEXUS_HOST=http://127.0.0.1:8081
ENV NEXUS_USER=admin
ENV NEXUS_PASS=admin
ENV NEXUS_REPO=docker