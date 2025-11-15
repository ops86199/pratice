# FROM ubuntu:20.04 AS prakash
# RUN apt update -y && \
#     apt install -y maven git openjdk-17-jdk && \
#     git clone https://github.com/ops86199/pratice.git
# WORKDIR /pratice 
# RUN mvn package

# FROM tomcat:9-jdk17 
# COPY --from=prakash pratice/target/*.war /user/local/tomcat/myapp
# RUNCHMOD -R 755 /user/locsl/tomcat/myapps
# EXPOSE 8081
# CMD ["catalina.sh","run"]



FROM ubuntu:20.04 AS prakash

RUN apt update -y && \
    apt install -y maven git openjdk-17-jdk && \
    git clone https://github.com/ops86199/pratice.git

WORKDIR /pratice
RUN mvn package

# ---------------------

FROM tomcat:9-jdk17

# Create app folder
RUN mkdir -p /usr/local/tomcat/webapps/myapp

# Copy WAR file
COPY --from=prakash /pratice/target/*.war /usr/local/tomcat/webapps/myapp/

RUN chmod -R 755 /usr/local/tomcat/webapps/myapp

EXPOSE 8081

CMD ["catalina.sh","run"]
