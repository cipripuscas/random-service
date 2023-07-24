FROM --platform=linux/x86_64  maven:3.8.3-openjdk-17 AS MAVEN_BUILD
COPY ./ ./
RUN mvn clean package
COPY app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]