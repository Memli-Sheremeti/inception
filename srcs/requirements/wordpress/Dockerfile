# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/16 14:11:03 by mshereme          #+#    #+#              #
#    Updated: 2024/07/17 16:09:27 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y 

RUN apt-get install -y php7.4-fpm

RUN mkdir -p /run/php && chmod 755 /run/php

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]

