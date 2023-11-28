FROM ubuntu
#MAINTAINER Pythonlife
RUN apt update
RUN apt install -y openjdk-11-jre-headless
COPY target/mSpringBootMavenExample-1.3.5.RELEASE.war /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar","app.jar"]
