 FROM tomcat:9.0.82-jdk8-corretto
ADD target/self-notes-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
RUN "/usr/local/tomcat/bin/startup.sh"
EXPOSE 8080
CMD ["catalina.sh", "run"]
#CMD ["/usr/local/tomcat/bin/startup.sh"]