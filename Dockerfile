FROM nginx:1.13-alpine

RUN apk add --no-cache nginx-mod-http-lua

COPY etc/nginx/default.conf /etc/nginx/conf.d/
COPY etc/nginx/nginx.conf /etc/nginx/
COPY html/index.html /usr/share/nginx/html/
