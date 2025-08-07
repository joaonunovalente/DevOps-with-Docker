# Utilizing tools from the Registry

## Commands
```bash
git clone https://github.com/docker-hy/material-applications.git

docker build -t backend-example-image .
docker run -p 8080:8080 --name backend-example-container8 backend-example-image
```

##  Terminal

```bash
[Ex 2.4+] REDIS_HOST env was not passed so redis connection is not initialized
[Ex 2.6+] POSTGRES_HOST env was not passed so postgres connection is not initialized
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
[GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
[GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```

## localhost

- http://localhost:8080/ping/
