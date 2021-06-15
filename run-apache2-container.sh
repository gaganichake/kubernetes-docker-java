!/bin/sh

# Stop the Container if it already running. Optional.
docker stop apache2-container

# Force remove the Container if still running. Optional.
docker rm -f apache2-container

# Create a network. Not requried if using Docker Compose
# docker network create my-network

# Container name newsapp-container is used as a host name by Apache2 instead of 'localhost' or '127.0.0.1'.
# See <VirtualHost *:80> directive in my-httpd.conf

# Run the Container
docker run -d -p 80:80 \
  #--network my-network
  --name apache2-container \
  gaganichake/apache2:1.0
