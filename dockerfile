# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app

# COPY . .

# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]

FROM openjdk:17-jdk
WORKDIR /app
COPY target/app.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
