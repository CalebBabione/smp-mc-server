FROM ubuntu:latest
RUN apt update -y && apt install default-jre -y
RUN mkdir /MC-FOLDER
COPY ./MC-FOLDER/. /MC-FOLDER
COPY ./srvstart.sh /MC-FOLDER
RUN chmod +X /MC-FOLDER/srvstart.sh
COPY ./test.sh /MC-FOLDER
RUN chmod +X /MC-FOLDER/test.sh
WORKDIR /MC-FOLDER
CMD ./test.sh

