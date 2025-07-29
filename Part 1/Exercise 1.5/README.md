# Exercise 1.5

# Commands

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

# Answer

What is the size of the alpine image (in MB): **83MB**

What is the size of the ubuntu image (in MB): **15.7MB**