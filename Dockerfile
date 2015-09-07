FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python2.7 nodejs nodejs-legacy npm

RUN npm config set color false; \
  npm config set loglevel warn

COPY package.json /app/package.json
WORKDIR /app
RUN npm install

COPY . /app

# EXPOSE 8000
# note server
EXPOSE 1947

CMD ["node", "plugin/notes-server"]
