FROM maven:3.9.2-eclipse-temurin-17 AS prakash
WORKDIR /pratice
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# ---------------------

FROM tomcat:9-jdk17

# Create app folder
RUN mkdir -p /usr/local/tomcat/webapps/myapp

# Copy WAR file
COPY --from=prakash /pratice/target/*.jar /usr/local/tomcat/webapps/myapp/

RUN chmod -R 755 /usr/local/tomcat/webapps/myapp

EXPOSE 8080

CMD ["catalina.sh","run"]
