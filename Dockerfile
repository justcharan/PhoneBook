FROM tomcat:9.0-jdk21-temurin

COPY PhoneBook2.war /usr/local/tomcat/webapps/PhoneBook2.war

EXPOSE 8080