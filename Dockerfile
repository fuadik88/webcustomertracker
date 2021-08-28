FROM tomcat:8.0-alpine

LABEL maintainer="fuadmonsoon"

RUN rm -rf /usr/local/tomcat/webapps/*

ADD *.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
