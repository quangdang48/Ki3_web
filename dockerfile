FROM tomcat:10.0

RUN rm -rf C:\apache-tomcat-10.1.28-windows-x64\apache-tomcat-10.1.28\webapps

COPY *.war C:\apache-tomcat-10.1.28-windows-x64\apache-tomcat-10.1.28\webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]