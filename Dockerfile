FROM openjdk:22

COPY server /server

WORKDIR /server

RUN echo "test"
RUN ls -a
RUN echo "test"

CMD ["./run.sh"]