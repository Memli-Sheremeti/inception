# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/16 14:11:03 by mshereme          #+#    #+#              #
#    Updated: 2024/07/17 18:03:52 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y 

RUN apt-get install -y php7.4-fpm curl php-mysql

RUN mkdir -p /run/php && chmod 755 /run/php

EXPOSE 9000

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/.

COPY tools/script.sh .

RUN chmod 755 script.sh

CMD ["./script.sh"]

