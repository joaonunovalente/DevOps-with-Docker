FROM ubuntu:24.04 

RUN apt-get update && apt-get upgrade -y

RUN apt-get install curl -y

WORKDIR /usr/src/app

COPY script.sh .

CMD ./script.sh