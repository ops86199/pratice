# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app

# COPY . .

# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]
# Use OpenJDK 17 as base image
FROM openjdk:17

# Copy the JAR file from target folder
COPY target/myapp-1.0.jar app.jar

# Run the JAR when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
