FROM node:8-alpine

RUN apk add --no-cache --update openssl
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64
RUN chmod +x /usr/local/bin/dumb-init

COPY package.json /opt/hello/
COPY server.js /opt/hello/

WORKDIR /opt/hello/
RUN npm install

EXPOSE 80
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["node", "/opt/hello/server.js"]
