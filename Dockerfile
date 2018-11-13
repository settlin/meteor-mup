FROM node:10
LABEL maintainer="settlin"
RUN curl "https://install.meteor.com" | sh && \
  npm install -g mup
