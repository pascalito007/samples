# samples
This project contains collection of samples

## Prerequisites to build the Dockerfile
* Install docker. Test your installation by running `docker --version`
* Install JDK and maven: Test your installations by running `java -version` and `mvn -version`
* Export `JAVA_HOME` environment variable

## Create local repository
* `mvn -Dmaven.repo.local=./repository clean package`
* `tar cf repository.tar.gz ./repository`

## Build the image
`docker build -t sample .`

## Run a container
`docker run -it -p 8080:8080 sample:latest`

The application can be accessed at [localhost:8080](http://localhost:8080)
