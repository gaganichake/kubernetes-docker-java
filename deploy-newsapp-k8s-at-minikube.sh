# https://kubernetes.io/docs/tutorials/hello-minikube/

# If you installed Minikube locally, run:
minikube start

# Use minikube start --driver=docker if you want specify different driver

# Open the Kubernetes dashboard in a browser:
minikube dashboard

# Create a Deployment
# Use the kubectl create command to create a Deployment that manages a Pod. The Pod runs a Container based on the provided Docker image:
kubectl create deployment news-app --image=localhost:5000/myfirstimage

# View the Deployment:
kubectl get deployments

# View the Pod:
kubectl get pods

# View cluster events:
kubectl get events

# View the kubectl configuration:
kubectl config view

# Create a Service
# Expose the Pod to the public internet using the kubectl expose command:
kubectl expose deployment news-app --type=LoadBalancer --port=8080
# The --type=LoadBalancer flag indicates that you want to expose your Service outside of the cluster.

# View the Service you just created:
kubectl get services

# On cloud providers that support load balancers, an external IP address would be provisioned to access the Service.
# On Minikube, the LoadBalancer type makes the Service accessible through the minikube service command.
# Run the following command:
minikube service news-app
# Get the URL of the exposed Service to view the Service details:
# minikube service news-app --url

# Clean up
# Now you can clean up the resources you created in your cluster:
kubectl delete service news-app
kubectl delete deployment news-app

# Optionally, stop the Minikube virtual machine (VM):
minikube stop

# Optionally, delete the Minikube VM:
minikube delete
