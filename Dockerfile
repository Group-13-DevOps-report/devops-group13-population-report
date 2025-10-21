# syntax=docker/dockerfile:1

# ---- Build stage ----
FROM eclipse-temurin:24-jdk-alpine AS build
WORKDIR /src
COPY .mvn/ .mvn/
COPY mvnw mvnw
COPY pom.xml pom.xml
RUN chmod +x mvnw && ./mvnw -q -ntp -DskipTests dependency:go-offline
COPY src/ src/
RUN ./mvnw -q -ntp -DskipTests package

# ---- Runtime stage ----
FROM eclipse-temurin:24-jre-alpine AS runtime
WORKDIR /app
COPY --from=build /src/target/world-population-app.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]