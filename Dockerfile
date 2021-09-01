FROM openjdk:11

# Refer to Maven build -> finalName
ARG JAR_FILE=target/zrm-*.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/zrm-*.jar /opt/app/zrm.jar
COPY ${JAR_FILE} zrm.jar

# java -jar /opt/app/zrm.jar
ENTRYPOINT ["java", "-jar", "zrm.jar"]

# How to build app
# mvn clean install -DskipTests

# How to build & run image locally
# docker build -t zrm-app .
# docker run --name zrm-app-service -p 8080:8080 -it zrm-app
