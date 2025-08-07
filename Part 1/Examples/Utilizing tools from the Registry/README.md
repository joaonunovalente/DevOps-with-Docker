# Utilizing tools from the Registry

## Commands
```bash
git clone https://github.com/docker-hy/material-applications.git

docker build . -t rails-example-project
docker run -it --name /rails-example-project-container -p 3000:3000 rails-example-project
```

##  localhost

```bash
=> Booting Puma
=> Rails 7.0.1 application starting in production 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.1 (ruby 3.1.0-p0) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: production
*          PID: 1
* Listening on http://0.0.0.0:3000
```
