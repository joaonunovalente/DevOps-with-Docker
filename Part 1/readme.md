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