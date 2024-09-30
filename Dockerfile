# Use a lightweight JDK as a base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the shadow JAR file to the container
ARG JAR_FILE=build/libs/algorithm-services-1.0.1-shadow.jar
COPY ${JAR_FILE} app.jar

# Expose the port on which the app will run
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
