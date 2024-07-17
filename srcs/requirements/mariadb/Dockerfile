# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/16 14:11:03 by mshereme          #+#    #+#              #
#    Updated: 2024/07/17 13:41:48 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh .

RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 755 /var/run/mysqld

RUN chmod 755 ./script.sh 

ENV SQL_DATABASE=inception
ENV SQL_USER=mshereme
ENV SQL_PASSWORD=coucou

ENTRYPOINT ["./script.sh"]

CMD ["mysqlsafe"]