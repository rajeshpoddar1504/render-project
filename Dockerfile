FROM maven:3.8.4-openjdk-8 AS build
COPY . .
RUN mvn clean install -DskipTests

RUN echo 'Identified Dockerfile'

#FROM openjdk:8-jdk-alpine
#COPY --from=build /target/self-notes-0.0.1-SNAPSHOT.jar ROOT.jar
#EXPOSE 808065
#ENTRYPOINT ["java","-jar","ROOT.jar"]

FROM tomcat:8.0-alpine
COPY --from=build /target/self-notes-0.0.1-SNAPSHOT.war usr/local/tomcat/webapps/ROOT.war
EXPOSE 8081
#ENTRYPOINT ["usr/local/tomcat/catalina.sh", "run"]
CMD ["catalina.sh", "run"]