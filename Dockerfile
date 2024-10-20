# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file from your local machine to the container
COPY target/RuleEngineAST-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on (default Spring Boot port is 8080)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
