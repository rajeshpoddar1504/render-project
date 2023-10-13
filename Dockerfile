FROM maven:3.8.4-openjdk-8 AS build
COPY ..
RUN mvn clean install -DskipTests

FROM openjdk:8-jdk-alpine
COPY --from=build /target/self-notes-0.0.1-SNAPSHOT.jar ROOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","ROOT.jar"]