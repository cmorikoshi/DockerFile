FROM ubuntu

LABEL MAINTAINER="Celio Morikoshi <cmorikoshi@hotmail.com>"
LABEL APP_VERSION="1.0.0"

ENV NPM_VERSION=8 ENVIROMENT=PROD

RUN apt-get update && apt-get install -y git nano

WORKDIR /usr/share/myapp

RUN npm build

COPY ./files/requirements.txt requirements.txt

ADD ./files.tar.gz ./

RUN useradd joao

USER joao

EXPOSE 8080

ENTRYPOINT [ "ping"]

CMD [ "localhost" ]
