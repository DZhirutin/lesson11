FROM tomcat:9.0.0.M19-alpine
RUN  cp /var/jenkins_home/workspace/lesson11/target/hello-1.0.war ./webapps/