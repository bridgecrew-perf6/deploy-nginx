FROM nginx:latest
RUN apt update

#Create folder

RUN mkdir -p /app

#Access folder

WORKDIR /app
	
RUN rm /etc/nginx/conf.d/default.conf

COPY app/nginx.conf /etc/nginx/conf.d/default.conf

COPY app/index.html /usr/share/nginx/html