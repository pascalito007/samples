# samples
This project contains collection of samples

## Prerequisites to build the Dockerfile
* Install docker
* Install maven and export JAVA_HOME environment variable

## Create local repository
`mvn -Dmaven.repo.local=./repository clean package`
`tar cf repository.tar.gz ./repository`

## Build the image
`docker build -t sample .`

## Run a container
`docker run -it -p 8080:8080 sample:latest`

The application can be accessed at [localhost:8080](http://localhost:8080)
