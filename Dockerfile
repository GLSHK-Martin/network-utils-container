FROM alpine:latest

MAINTAINER Martin Lau

EXPOSE 80 443

# Install some tools in the container and generate self-signed SSL certificates.
# Packages are listed in alphabetical order, for ease of readability and ease of maintenance.
RUN     apk update \
    &&  apk add bash curl iperf3 iproute2 iputils jq net-tools nmap 
    
COPY Dockerfile /Dockerfile 
