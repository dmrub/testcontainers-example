FROM openjdk:22-slim
LABEL maintainer="Dmitri Rubinstein"

RUN mkdir -p /usr/share/k8s-java-example/bin

ADD /target/testcontainers-example-*SNAPSHOT.jar /usr/share/testcontainers-example/bin/testcontainers-example.jar

WORKDIR /usr/share/testcontainers-example

ENTRYPOINT ["java", "-jar", "bin/testcontainers-example.jar"]
