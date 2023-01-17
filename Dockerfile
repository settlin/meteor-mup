FROM node:14-slim
LABEL maintainer="settlin"
RUN apt-get update && apt-get install build-essential curl python cmake git openssh-client iputils-ping -y
RUN curl --location --output /usr/local/bin/release-cli "https://release-cli-downloads.s3.amazonaws.com/latest/release-cli-linux-amd64"
RUN chmod +x /usr/local/bin/release-cli
RUN curl "https://install.meteor.com" | sh
RUN npm config set user 0
RUN npm install -g mup mup-aws-beanstalk @settlin/mup-aws-beanstalk-v7 @settlin/mup-aws-beanstalk
