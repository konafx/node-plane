FROM node:16-buster

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
RUN npm install --silent -g npm@latest

# start app
SHELL ["/bin/bash", "-l", "-c"]
