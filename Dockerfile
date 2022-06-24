FROM nginx:latest
RUN apt update
RUN mkdir -p /app
WORKDIR /app
	
RUN rm /etc/nginx/conf.d/default.conf

COPY app/nginx.conf /etc/nginx/conf.d/default.conf

COPY app/index.html /usr/share/nginx/html