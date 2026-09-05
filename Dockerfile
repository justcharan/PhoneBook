FROM tomcat:9.0-jdk21-temurin

COPY PhoneBook2.war /usr/local/tomcat/webapps/PhoneBook2.war

RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml

EXPOSE 10000