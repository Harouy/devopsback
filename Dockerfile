ROM maven:3.8.4-openjdk-17

RUN groupadd -r mygroup && useradd -r -g mygroup -m -d /home/myuser myuser
USER myuser


COPY target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/app.jar" ]