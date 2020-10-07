FROM openjdk:8-jdk
EXPOSE 80
ENV JAVA_OPTS -server -XX:+UseContainerSupport -XX:MinRAMPercentage=20.0 -XX:MaxRAMPercentage=75.0
RUN wget https://devops-kometsales.s3.amazonaws.com/demo-0.0.1-SNAPSHOT.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]