FROM maven:3.6-jdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
run mvn clean package

FROM adoptopenjdk/openjdk11:alpine-slim
COPY --from=builder /app/target/*.jar /app/application.jar
ENV AWS_ACCESS_KEY_ID=XXX
ENV AWS_SECRET_ACCESS_KEY=YYY
ENV UCKET_NAME=candidate-2027
ENTRYPOINT ["java","-jar","/app/application.jar"]
