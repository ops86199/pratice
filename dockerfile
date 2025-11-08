# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app

# COPY . .

# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
