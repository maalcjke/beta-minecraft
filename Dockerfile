FROM eclipse-temurin:8-jre

WORKDIR /data

COPY server.jar /server.jar

RUN echo "eula=true" > /data/eula.txt

EXPOSE 25565

ENTRYPOINT ["java", "-Xms512M", "-Xmx1024M", "-jar", "/server.jar", "nogui"]
