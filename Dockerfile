FROM openjdk:22

COPY server /server

WORKDIR /server

EXPOSE 25565
EXPOSE 25575

RUN ["chmod", "+x", "./run.sh"]

CMD ["./run.sh"]