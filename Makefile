# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/17 14:03:56 by mshereme          #+#    #+#              #
#    Updated: 2024/07/22 16:29:20 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:
	mkdir -p /home/mshereme/data/mariadb && mkdir -p /home/mshereme/data/wordpress
	cd srcs && docker compose up --build -d

clean:
	docker compose -f ./srcs/docker-compose.yml down

fclean: clean
	@- docker system prune -a -f
	@- docker volume rm mariadb wordpress
	@- sudo rm -rf  /home/mshereme/data/mariadb
	@- sudo rm -rf /home/mshereme/data/wordpress

mariadb:
	@- docker exec -it mariadb /bin/bash		
	
rebuild: clean build

rerun: rebuild run