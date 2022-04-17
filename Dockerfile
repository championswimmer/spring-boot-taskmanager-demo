FROM openjdk:17-slim

ARG JAR_FILE=build/libs/taskmanager-0.0.1-SNAPSHOT.jar
ARG DB_FILE=test.db.mv.db

COPY ${JAR_FILE} taskmanager.jar
COPY ${DB_FILE} ${DB_FILE}


ENTRYPOINT ["java","-jar","/taskmanager.jar"]





