FROM alpine:latest

RUN apk update ; apk add ansible openssh sshpass
RUN mkdir /etc/ansible

WORKDIR /etc/ansible
COPY . .

RUN ansible --version
