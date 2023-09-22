#!/bin/sh -l
echo 'Docker building...'
docker build -t $1/$2 $3

echo 'Setting docker tag...'
IMAGE_ID=$(docker images -q | head -n 1)
echo $IMAGE_ID
docker tag $IMAGE_ID $1/$2:$3
docker tag $IMAGE_ID $1/$2:latest

echo 'Pushing docker image...'
docker push $1/$2:$6
docker push $1/$2:latest;

echo "image-name=$1/$2:$6" >> $GITHUB_OUTPUT