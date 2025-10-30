# Exercise 3.6


## Image sizes

- Frontend orignal: 1.29GB
- Frontend optimized: 915MB

- Backend orignal: 1.08GB
- Backtend optimized: 938MB 

--- 

## Frontend

## Commands
```bash
git clone https://github.com/docker-hy/material-applications.git

docker build -t frontend-example-image .
docker run -it -p 5000:5000 --name frontend-container frontend-example-image
```

##  Terminal

```bash
   ┌────────────────────────────────────────┐
   │                                        │
   │   Serving!                             │
   │                                        │
   │   - Local:    http://localhost:5000    │
   │   - Network:  http://172.17.0.2:5000   │
   │                                        │
   └────────────────────────────────────────┘
```

## localhost

- http://localhost:5000/

---

## Backend

## Commands
```bash
git clone https://github.com/docker-hy/material-applications.git

docker build -t backend-example-image .
docker run -p 8080:8080 --name backend-example-container backend-example-image
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

