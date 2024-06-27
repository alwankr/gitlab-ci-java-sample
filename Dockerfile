FROM openjdk:17-jdk-slim
RUN apt-get update && apt-get upgrade -y

WORKDIR application
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar

ENTRYPOINT ["java","-jar","application.jar"]
EXPOSE 8080
