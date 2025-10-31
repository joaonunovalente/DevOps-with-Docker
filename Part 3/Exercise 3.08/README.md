# Exercise 3.8

---

## Frontend

### Commands
```bash
git clone https://github.com/docker-hy/material-applications.git

docker build -t frontend-example-image:nginx .
docker run -it -p 5000:80 --name frontend-container frontend-example-image:nginx
```

###  Terminal

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

### localhost

- http://localhost:5000/

