FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8081
COPY target/centralize-config-1.0.0.jar centralize-config.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/centralize-config.jar"]