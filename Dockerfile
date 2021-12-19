FROM node:14-slim
LABEL maintainer="settlin"
RUN apt-get update && apt-get install build-essential curl python cmake git openssh-client iputils-ping -y
RUN curl "https://install.meteor.com" | sh
RUN npm config set user 0
RUN npm install -g mup mup-aws-beanstalk
