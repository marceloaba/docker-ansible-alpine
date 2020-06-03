FROM alpine:latest

RUN apk update ; apk add ansible openssh sshpass curl
RUN mkdir /etc/ansible

WORKDIR /etc/ansible
COPY . .

RUN ansible --version
