FROM tomcat:9.0.0.M19-alpine
WORKDIR /var/jenkins_home/workspace/lesson11/
COPY ./target/hello-1.0.war /var/lib/tomcat9/webapps/