!/bin/sh

# Pull the image to local disk
# docker pull mysql:5.6

# Create a network. Not requried if using Docker Compose
docker network create mysql-network

# Stop the Container if it already running. Optional.
docker stop mysql-container

# Force remove the Container if still running. Optional.
docker rm -f mysql-container

# Starting a MySQL instance
docker run --name mysql-container --network mysql-network -e MYSQL_ROOT_PASSWORD=MyRootPassword -d mysql:5.6

# The following command starts another mysql container instance and runs the mysql command line client
# against your original mysql container, allowing you to execute SQL statements against your database instance
docker run --name mysql-CLI-container -it --network mysql-network --rm mysql mysql -hmysql-container  -uroot -p

# This image can also be used as a client for non-Docker or remote instances:
# $ docker run -it --rm mysql mysql -h<some.mysql.host> -u<some-mysql-user> -p

## MySQL Commond Line : Start ##
# mysql> create database db_example;

# mysql> create user 'gagan' identified by 'ThePassword';

# mysql> grant all on db_example.* to 'gagan';
## MySQL Commond Line : End ##
