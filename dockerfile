FROM     openjdk:8-jdk-alpine
RUN      adduser -D roboshop
RUN      mkdir /app
RUN      chown roboshop /app
WORKDIR  /app
USER     roboshop

ADD      shipping.jar .
ENTRYPOINT ["java" "-jar" "shipping.jar"]
