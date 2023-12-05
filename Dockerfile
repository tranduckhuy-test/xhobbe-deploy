#CMD ["/bin/sh"]
FROM tomcat:8.5.47-jdk8-openjdk
COPY . .
RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/XHobbeWebApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]