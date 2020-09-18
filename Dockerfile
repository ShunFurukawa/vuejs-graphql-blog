FROM node:14.9.0-alpine3.10

WORKDIR /usr/src/app

RUN apk update && \
    npm install -g npm @vue/cli@3.12.0
