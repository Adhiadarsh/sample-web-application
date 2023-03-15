# # Use an existing Tomcat image as the base image
# FROM tomcat:9.0.39-jdk14

# # Set the working directory to the Tomcat webapps folder
# WORKDIR /usr/local/tomcat/webapps

# # Copy the WAR file from the host machine to the container
# COPY target/*.war .

# # Start the Tomcat server
# CMD ["catalina.sh", "run"]




# Use Tomcat as the base image
FROM tomcat:9.0.39-jdk14

# Copy the WAR file to the Tomcat webapps directory
COPY *.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Set the default command to start Tomcat
CMD ["catalina.sh", "run"]

