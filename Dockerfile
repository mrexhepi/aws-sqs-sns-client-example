FROM node:14-alpine

WORKDIR /app

COPY ./config/aws-config-sample.json /app/config/aws-config.json
COPY ./config/aws-override-sample.json /app/config/aws-override.json
ADD . /app

RUN npm install