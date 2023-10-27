FROM maven:3.6.3-jdk-8 as build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean install

FROM tomcat:9.0.82-jdk8-corretto
#ADD target/self-notes-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
COPY --from=build /home/app/target/self-notes-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
RUN "/usr/local/tomcat/bin/startup.sh"
EXPOSE 8080
CMD ["catalina.sh", "run"]
#CMD ["/usr/local/tomcat/bin/startup.sh"]