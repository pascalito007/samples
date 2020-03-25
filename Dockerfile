FROM maven:3.6.3-jdk-8 as BUILD
ADD repository.tar.gz /usr/share/maven/ref/

COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn -s /usr/share/maven/ref/settings-docker.xml package

FROM openjdk:8-jre
EXPOSE 8080
COPY --from=BUILD /usr/src/app/target/*.jar /opt/target/app.jar
WORKDIR /opt/target

>>>>>>> Using maven base image and adjust image build with maven utilites+ two steps
ENTRYPOINT ["java","-jar", "app.jar"]
