FROM openjdk:17-jdk-slim
#WORKDIR /app

COPY agent/service2 .
RUN ./mvnw package

