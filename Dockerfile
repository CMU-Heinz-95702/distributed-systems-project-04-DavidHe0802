# Use a Linix image with Tomcat 10
FROM tomcat:10.1.0-M5-jdk16-openjdk-slim-bullseye

# Copy in our ROOT.war to the right place in the container
COPY ROOT.war /usr/local/tomcat/webapps/

# Expose port 8080 when running on localhost
EXPOSE 8080

# Copy in our ROOT.war to the right place in the container
COPY ROOT.war /usr/local/tomcat/webapps/

# LOCALHOST:  Run catalina in the container
# Should map localhost:8080 to this app
CMD ["catalina.sh", "run"]
