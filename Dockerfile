FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
#HelloNagara
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]

