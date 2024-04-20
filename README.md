# Build the Docker image:
 --> docker build -t wisecow-app .
 
## Replace wisecow-app with the desired name for your Docker image.
### Verify the Docker image:
--> docker images

## This command will list all Docker images on your system, and you should see the wisecow-app image listed.
### Run the Docker container (optional):
--> docker run -d -p 4499:4499 wisecow-app

## This command will start a container in detached mode (-d) and map port 4499 of the container to port 4499 on your host system (-p 4499:4499).
### Push the Docker image to a container registry (optional):
--> docker tag wisecow-app yourusername/wisecow-app

## Push the tagged image to the registry:
--> docker push yourusername/wisecow-app

# Apply Manifests:
--> kubectl apply -f wisecow-deployment.yaml

--> kubectl apply -f wisecow-service.yaml
