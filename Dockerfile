# Use AdoptOpenJDK base image with Java 17
FROM openjdk:17-jdk-slim AS build

# Set working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/jenkins-docker-integration.jar /app/jenkins-docker-integration.jar

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8082

# Command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "/app/jenkins-docker-integration.jar"]
