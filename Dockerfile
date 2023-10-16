FROM maven:3.8.4-openjdk-8 AS build
COPY . .
RUN mvn clean install -DskipTests

RUN echo 'Identified Dockerfile'

#FROM openjdk:8-jdk-alpine
#COPY --from=build /target/self-notes-0.0.1-SNAPSHOT.jar ROOT.jar
#EXPOSE 808065
#ENTRYPOINT ["java","-jar","ROOT.jar"]

FROM tomcat
COPY --from=build /target/self-notes-0.0.1-SNAPSHOT.war usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]