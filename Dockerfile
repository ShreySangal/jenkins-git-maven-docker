FROM socialmetrix/docker-alpine-jdk:jdk7

RUN mkdir -p /app
ADD target/dummy-1.0-SNAPSHOT.jar /app
