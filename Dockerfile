FROM eclipse-temurin:17-jre-alpine

ENV TZ=Asia/Hong_Kong
ENV JAVA_OPTS="-server -XX:+UseG1GC -verbose:gc -Xlog:gc:stdout -XX:InitialRAMPercentage=50 -XX:MaxRAMPercentage=90 -XX:MinRAMPercentage=50"

#COPY extra-directories /extra-directories

# https://spring.io/guides/gs/spring-boot-docker/
RUN addgroup -S spring && adduser -S spring -G spring
#RUN chown -R spring:spring /extra-directories
USER spring:spring

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar
