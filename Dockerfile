FROM tomcat:8.0-alpine

LABEL maintainer="fuadmonsoon"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY *.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
