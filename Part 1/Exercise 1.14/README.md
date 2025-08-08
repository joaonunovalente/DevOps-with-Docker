# Exercise 1.14

## Commands
```bash
docker build -t frontend-example-image .
docker run -it -p 5000:5000 --name frontend-container frontend-example-image

docker build -t backend-example-image .
docker run -p 8080:8080 --name backend-example-container backend-example-image
```

## localhost

- http://localhost:8080/ping
- http://localhost:5000
