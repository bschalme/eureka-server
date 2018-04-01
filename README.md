# eureka

This is a Docker-ized version of [Spring Cloud Eureka](https://cloud.spring.io/spring-cloud-static/spring-cloud-netflix/1.4.4.RELEASE/multi/multi_spring-cloud-eureka-server.html) server.

Build it just like any other Gradle app:

```
./gradlew build
```

To build the Docker container:

```
docker build -t username/eureka-server:latest .
docker push username/eureka-server:latest
```

The preceding example tags and pushes the image to Docker Hub under `username`. If you are using a private registry, 
replace `username` with the FQDN of your Docker registry.

To run in Docker:

```
docker run -dp 8761:8761 username/eureka-server
```
