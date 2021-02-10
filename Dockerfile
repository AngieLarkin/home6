FROM tomcat
RUN rm -rf /usr/local/tomcat/conf/server.xml
ADD server.xml /usr/local/tomcat/conf
RUN apt-get update && apt-get -y install maven && apt-get -y install git
WORKDIR /root
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /root/boxfuse-sample-java-war-hello
RUN mvn -f pom.xml package
RUN cp /root/boxfuse-sample-java-war-hello/hello-1.0.war  /usr/local/tomcat/webapps
