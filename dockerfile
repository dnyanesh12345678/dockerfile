FROM ubuntu
RUN apt-get update
RUN apt-get install curl -y
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz
RUN tar -zxvf apache-tomcat-8.5.75.tar.gz
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
ENV PATH=$PATH:/apache-tomcat-8.5.75/bin
CMD startup.sh && service ssh start && /bin/bash
