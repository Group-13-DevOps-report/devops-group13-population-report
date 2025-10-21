# syntax=docker/dockerfile:1
FROM eclipse-temurin:24-jre-alpine AS runtime
WORKDIR /app
ARG JAR=target/world-population-app.jar
COPY ${JAR} /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]