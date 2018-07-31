FROM alpine:3.8

RUN apk add curl
RUN curl https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz -o helm-v2.9.1-linux-amd64.tar.gz
RUN tar -xzvf helm-v2.9.1-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm
RUN mkdir -p ~/.helm/repository/local/
ENV HELM_HOME ~/.helm
