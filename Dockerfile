# Use the official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat's webapps directory
COPY target/spring-mvc-demo.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat (default CMD works, but you can include this explicitly)
CMD ["catalina.sh", "run"]
