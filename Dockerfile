FROM openjdk:22

COPY server /server

WORKDIR /server

RUN apt update && apt install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root123' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
EXPOSE 25565
EXPOSE 25575

RUN ["chmod", "+x", "./run.sh"]

CMD ["./run.sh"]