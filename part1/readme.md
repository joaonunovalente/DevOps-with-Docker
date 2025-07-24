# Commands

## Exercise 1.1

```bash
docker container run nginx (x3)

docker container stop sleepy_kalam
docker container stop relaced_archimedes

docker container ls -a
```

## Exercise 1.2

```bash
docker container stop fervent_chaum

docker container rm sleepy_kalam relaxed_archimedes fervent_chaum
docker image rm nginx

docker container ls -a
docker image ls -a
```

## Exercise 1.3

```bash
docker run -d --name simple-web-service devopsdockeruh/simple-web-service:ubuntu
docker exec -it simple-web-service bash

tail -f ./text.log
```

## Exercise 1.4

```bash
docker run -it --name ubuntu-curl ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
Control+C

docker exec -it ubuntu-curl bash

apt-get update 
apt-get install curl -y
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

## Exercise 1.6

```bash
docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine

docker images | grep devopsdockeruh/simple-web-service

docker run -d --name alpine-log devopsdockeruh/simple-web-service:alpine
docker exec -it alpine-log sh
tail -f ./text.log

docker run -d --name ubuntu-log devopsdockeruh/simple-web-service:ubuntu
docker exec -it ubuntu-log bash
tail -f ./text.log
```
