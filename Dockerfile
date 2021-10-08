FROM node:14-alpine
LABEL maintainer="settlin"
RUN apk add --no-cache --virtual .build-deps cmake alpine-sdk python
RUN curl "https://install.meteor.com" | sh
RUN npm config set user 0
RUN npm install -g mup mup-aws-beanstalk@next
