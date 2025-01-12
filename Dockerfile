# Use the official image as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY demo/target/*.jar app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","app.jar"]
