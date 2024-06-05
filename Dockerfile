FROM openjdk:22

COPY server /server

WORKDIR /server

RUN ["chmod", "+x", "/node/execure.sh"]

CMD ["./run.sh"]