!/bin/sh

#  https://docs.docker.com/engine/reference/commandline/stack/

docker stack deploy --orchestrator=kubernetes --compose-file docker-compose.yml  my-app-stack

#docker stack rm my-app-stack
