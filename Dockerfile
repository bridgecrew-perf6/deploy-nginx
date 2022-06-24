FROM nginx:latest
RUN apt update
WORKDIR '/app'
	
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /index.html /usr/share/nginx/html