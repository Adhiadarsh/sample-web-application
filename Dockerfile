# # Use an existing Tomcat image as the base image
# FROM tomcat:9.0.39-jdk14

# # Set the working directory to the Tomcat webapps folder
# WORKDIR /usr/local/tomcat/webapps

# # Copy the WAR file from the host machine to the container
# COPY target/*.war .

# # Start the Tomcat server
# CMD ["catalina.sh", "run"]




# Use an existing image as the base image
FROM tomcat:9.0.39-jdk14

# Copy the JSP file to the webapps directory in the container
COPY index.jsp /usr/local/tomcat/webapps/ROOT/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]
