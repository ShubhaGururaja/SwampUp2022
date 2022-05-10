image_name=krishnajprod.jfrog.io/sup002-swampup-docker-dev-local/docker-app:$1

docker build -t $image_name .
docker push $image_name 
