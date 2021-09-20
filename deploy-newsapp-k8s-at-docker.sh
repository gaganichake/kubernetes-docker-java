# https://kubernetes.io/docs/tutorials/hello-minikube/
# echo Create a Deployment
# Use the kubectl create command to create a Deployment that manages a Pod. The Pod runs a Container based on the provided Docker image:
kubectl create deployment news-app --image=gaganichake/news-app:1.0

# echo View the Deployment:
#kubectl get deployments

# echo View the Pod:
#kubectl get pods

# echo View cluster events:
#kubectl get events

# echo View the kubectl configuration:
#kubectl config view

# echo Create a Service
# Expose the Pod to the public internet using the kubectl expose command:
kubectl expose deployment news-app --type=LoadBalancer --port=8080
# The --type=LoadBalancer flag indicates that you want to expose your Service outside of the cluster.

# echo View the Service you just created:
#kubectl get services

# echo Clean up
# Now you can clean up the resources you created in your cluster:
#kubectl delete service news-app
#kubectl delete deployment news-app
