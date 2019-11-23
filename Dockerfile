FROM nginx:1.10.3
COPY public /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d
