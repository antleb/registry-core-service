FROM tomcat:8.5-jre8-alpine
MAINTAINER "stevengatsios@gmail.com"

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./target/RegistryService.war /usr/local/tomcat/webapps/RegistryService.war
COPY ./src/main/resources/registry.properties /usr/local/tomcat/lib/registry.properties
EXPOSE 8080

CMD ["catalina.sh", "run"]
