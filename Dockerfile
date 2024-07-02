# Use AdoptOpenJDK base image with Java 17
FROM openjdk:17-jdk-slim AS build

# Set working directory inside the container
WORKDIR /Users/md.shahanurrahman/.jenkins/workspace/jenkins-docker-integration

# Copy the packaged JAR file into the container at /app
COPY target/jenkins-docker-integration.jar /Users/md.shahanurrahman/.jenkins/workspace/jenkins-docker-integration/jenkins-docker-integration.jar

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8089

# Command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "/jenkins-docker-integration.jar"]
