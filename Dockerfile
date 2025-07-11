#FROM maven:3.6.3-jdk-8 as build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean install

#FROM tomcat:9.0.82-jdk8-corretto
##ADD target/self-notes-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
#COPY --from=build /home/app/target/self-notes-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
#RUN "/usr/local/tomcat/bin/startup.sh"
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
##CMD ["/usr/local/tomcat/bin/startup.sh"]

# Use an official Maven image with JDK 21 as the base image for the build stage
FROM maven:3.9.5-eclipse-temurin-21 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY pom.xml ./

# Download Maven dependencies (this will be cached, unless pom.xml changes)
RUN mvn dependency:go-offline -B

# Copy the rest of the application source code to the container
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Use a smaller base image with JDK 21 to run the application in the final stage
FROM eclipse-temurin:21-jre

# Set the working directory in the container
WORKDIR /app

# Copy the built application from the build stage
COPY --from=build /app/target/*.war ROOT.war

# Expose the port your application runs on (e.g., 8080)
EXPOSE 8080

# Command to run the application
#CMD ["java", "-jar", "app.jar"]
CMD ["catalina.sh", "run"]