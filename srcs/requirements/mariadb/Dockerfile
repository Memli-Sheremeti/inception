# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mshereme <mshereme@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/16 14:11:03 by mshereme          #+#    #+#              #
#    Updated: 2024/07/16 16:34:43 by mshereme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh .

RUN chmod 755 ./script.sh 

# ENV FOOO=$FOO
 
ENTRYPOINT ["tools/script.sh"]

CMD ["mysqlsafe"]