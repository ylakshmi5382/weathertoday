FROM eclipse-temurin:21-jdk-alpine
EXPOSE 8299
VOLUME /tmp
ENV JAR_FILE               'target/app.jar'
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]