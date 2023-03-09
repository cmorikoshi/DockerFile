FROM ubuntu

RUN apt-get update && apt-get install -y git nano

WORKDIR /usr/share/myapp

RUN npm build

COPY ./files/requirements.txt requirements.txt

ADD ./files.tar.gz ./