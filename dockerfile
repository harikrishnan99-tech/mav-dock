FROM openjdk:8

WORKDIR /app
COPY target/java_app-0.0.1-SNAPSHOT.jar java_app-0.0.1-SNAPSHOT.jar
COPY pom.xml pom.xml
COPY maven-entrypoint.bat maven-entrypoint.bat
RUN chmod +x maven-entrypoint.bat
ENTRYPOINT ["./maven-entrypoint.bat"]
CMD curl -f http://localhost:8080 || exit 1

EXPOSE 8080
