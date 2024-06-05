FROM openjdk:22

COPY server /server

WORKDIR /server

RUN ["chmod", "+x", "./run.sh"]

CMD ["./run.sh"]