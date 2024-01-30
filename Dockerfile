FROM eclipse-temurin:21-jre-alpine
VOLUME /tmp
ENV JAR_FILE               'target/app.jar'
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]