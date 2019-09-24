FROM ubuntu:18.04

LABEL maintainer="arananegrayeye@gmail.com"

# Node configuration 
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# App configuration
WORKDIR /opt/app
COPY . .
RUN npm install --only=production
EXPOSE 8888

ENTRYPOINT [ "npm", "start"]
