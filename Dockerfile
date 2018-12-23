FROM node:latest
LABEL maintainer="settlin"
RUN curl "https://install.meteor.com" | sh && \
  npm install -g mup mup-aws-beanstalk
