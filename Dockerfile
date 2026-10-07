FROM tomcat:9.0-jdk21-temurin

COPY PhoneBook2.war /usr/local/tomcat/webapps/PhoneBook2.war

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT:-10000}\\\"/\" /usr/local/tomcat/conf/server.xml && exec catalina.sh run"]

EXPOSE 10000
