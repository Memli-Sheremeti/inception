# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/17 14:03:56 by mshereme          #+#    #+#              #
#    Updated: 2024/07/18 14:08:26 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


build:
	mkdir -p /home/mshereme/data/mariadb && mkdir -p /home/mshereme/data/wordpress
	cd srcs && docker compose up --build

clean: 
	@- docker system prune -a -f
	@- docker volume rm mariadb wordpress
	@- sudo rm -rf  /home/mshereme/data/mariadb
	@- sudo rm -rf /home/mshereme/data/wordpress
	
rebuild: clean build

rerun: rebuild run