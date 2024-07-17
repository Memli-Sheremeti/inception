# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/17 14:03:56 by mshereme          #+#    #+#              #
#    Updated: 2024/07/17 16:15:08 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

clean: 
	docker system prune -a -f

build:
	cd srcs && docker compose up --build

rebuild: clean build

# run:
#    cd $(PATH`) && docker run --rm -p 82:80 basic

rerun: rebuild run