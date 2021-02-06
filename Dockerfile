FROM tomcat
RUN rm -rf /usr/local/tomcat/conf/server.xml
ADD server.xml /usr/local/tomcat/conf
ADD hello-1.0.war /usr/local/tomcat/webapps
