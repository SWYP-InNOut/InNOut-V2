FROM openjdk:17-alpine

ARG JAR_FILE=build/libs/inandout-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} /app.jar

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=dev", "/app.jar"]