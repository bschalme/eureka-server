FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8761

LABEL maintainer="Brian Schalme <bschalme@airspeed.ca>"

ADD build/libs/eureka-server-*.jar eureka-server.jar
RUN sh -c 'touch /eureka-server.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-server.jar"]