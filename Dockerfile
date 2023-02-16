FROM eclipse-temurin:11-alpine
ARG app_ver="1.0.0-SNAPSHOT"
RUN mkdir /opt/app
COPY "build/libs/otus-service-hello-${app_ver}.jar" /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]