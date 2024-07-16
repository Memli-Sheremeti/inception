# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/15 17:48:37 by mshereme          #+#    #+#              #
#    Updated: 2024/07/16 13:59:50 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx && apt-get install vim -y\
	&& apt-get install curl -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl && chmod 755 /etc/nginx/ssl &&\
	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=lgoin"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/html/ && chmod 755 /var/www/html && chown -R www-data:www-data /var/www/html

# EXPOSE 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]