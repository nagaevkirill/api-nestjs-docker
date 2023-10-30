FROM alpine:latest

RUN apk update

RUN apk add mc

RUN apk add nodejs

RUN apk add npm

COPY . /opt/api

WORKDIR /opt/api

RUN npm install

CMD node dist/main.js

expose 3000