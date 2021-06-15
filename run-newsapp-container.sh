!/bin/sh

# Stop the Container if it already running. Optional.
docker stop newsapp-container

# Force remove the Container if still running Optional.
docker rm -f newsapp-container

# Run the Container
docker run -d -p 8080:8080
  # --network my-network
  --name newsapp-container gaganichake/news-app:1.0
