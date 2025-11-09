# Use a supported Java 17 base image from Eclipse Temurin
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/myapp-1.0.jar app.jar

EXPOSE 8083

ENTRYPOINT ["java", "-jar", "app.jar"]
