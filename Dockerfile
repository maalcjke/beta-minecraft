FROM eclipse-temurin:21-jre

WORKDIR /data

COPY server.jar /server.jar

EXPOSE 25565

ENTRYPOINT ["sh", "-c", "echo 'eula=true' > /data/eula.txt && exec java -Xms1G -Xmx2G -jar /server.jar nogui"]
