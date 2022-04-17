# https://docs.docker.com/registry/
!/bin/sh

# Start your registry
gaganichake$ docker run -d -p 5000:5000 --name registry registry:2

# Pull (or build) some image from the hub
# Ignore if already have your project image

# Tag the image so that it points to your registry
docker image tag gaganichake/news-app:1.0 localhost:5000/news-app
docker image tag gaganichake/apache2:1.0 localhost:5000/apache2

# Push it
docker push localhost:5000/news-app
docker push localhost:5000/apach2

# Remove the locally-cached images, so that you can test pulling the image from your registry.
# This does not remove the localhost:5000/<xxx> actual image from your registry.
# docker image remove gaganichake/news-app:1.0
# docker image remove gaganichake/apache2:1.0
docker image remove localhost:5000/news-app
docker image remove localhost:5000/apache2

# Pull it back wherever you want
docker pull localhost:5000/news-app
docker pull localhost:5000/apache2
# docker pull myregistrydomain:port/foo/bar instructs docker to contact the registry located at
# myregistrydomain:port to find the image foo/bar
# docker pull ubuntu instructs docker to pull an image named ubuntu from the official Docker Hub.
# This is simply a shortcut for the longer docker pull docker.io/library/ubuntu command

# Now stop your registry and remove all data
# docker container stop registry && docker container rm -v registry
