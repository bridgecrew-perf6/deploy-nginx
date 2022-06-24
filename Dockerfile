FROM nginx:latest
RUN apt update
WORKDIR /app
	
RUN rm /etc/nginx/conf.d/default.conf

RUN cp ./nginx.conf /etc/nginx/conf.d/default.conf

RUN cp ./index.html /usr/share/nginx/html