./run!/bin/sh

# git clone https://github.com/gaganichake/kubernetes-docker-java.git

cd newsApp

# Build a docker image with <name>:<tag>
docker build -t gaganichake/news-app:1.0 .
