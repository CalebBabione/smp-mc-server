FROM ubuntu:latest
RUN apt update -y && apt install default-jre -y
RUN mkdir /MC-FOLDER
RUN COPY ./srvstart.sh /
RUN chmod +X /srvstart.sh
ENTRYPOINT ["/srvstart.sh"]

