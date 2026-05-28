FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html
COPY luffy.jpg /usr/share/nginx/html/luffy.jpg
EXPOSE 80
