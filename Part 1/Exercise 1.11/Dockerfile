FROM ubuntu:24.04

# Set the working directory
WORKDIR /usr/src/app

# Expose the port the app runs on
EXPOSE 8080

# Update and Upgrade
RUN apt-get update && apt-get -y upgrade

## Install Java 8
RUN apt-get install -y openjdk-8-jdk maven

# Copy the application files into the container
COPY ./material-applications/spring-example-project .

# Build the project with ./mvnw package
RUN chmod +x mvnw && ./mvnw package

CMD [ "java", "-jar", "./target/docker-example-1.1.3.jar" ]