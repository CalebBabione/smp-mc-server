FROM ubuntu:latest
RUN apt update -y && apt install openjdk-17-jdk -y && apt install openjdk-17-jre -y
RUN mkdir /MC-FOLDER
RUN COPY ./srvstart.sh /
RUN chmod +X /srvstart.sh
EXPOSE 25565
EXPOSE 25575
ENTRYPOINT ["/srvstart.sh"]

