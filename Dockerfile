FROM nginx:1.13-alpine
COPY etc/nginx/default.conf /etc/nginx/conf.d/
COPY html/index.html /usr/share/nginx/html/
