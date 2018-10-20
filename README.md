# Boilerplate LAMP Docker-Compose Stack

A super simple LAMP (**L**inux, **A**pache, **M**ySQL, **P**HP) stack for web development. No fancy features, just a barebones template project. 

### Contents

- Apache (from Docker maintained Apache image)
- PHP 7.0
- PDO MySQL plugins for PHP
- MySQL 8.0

### Default Configuration

Configuration changes can be made easily in `docker-compose.yml`. Below are the defaults.

- MySQL
  - MySQL default credentials `root:docker`
  - MySQL database name `db`
- Port forwarding `Host:Container`
  - `80:80`
  - `443:443`
  - `3306:3306`
- Webserver 
  - serves from the `/web` directory
  - has access to the `/include` directory for offline files
  - Live editing and changes are supported; no need to stop and restart the webserver during development

### Deployment

This stack was designed for Ubuntu Linux 18.04 LTS, but since it runs in Docker, presumably other distros would also work - though commands may not translate 1:1.

- Install Docker
- Install Docker-Compose
- `cd /path/to/boilerplate-lamp-docker-compose`
- `mkdir db`
- `docker-compose up --build`

Alternatively, I am trying to create an automated script (`setup-environment.sh`) that will automatically install Docker and Docker-Compose, meaning all a user would need to do is run `sudo setup-environment.sh`.

### Devtools

Currently, the development tools supplied are:

- `setup-environment.sh` (which does not yet work), an incomplete script to automatically install all dependencies for deployment. Requires `root` privileges.
- `db-destroy.sh`, a tool that will completely destroy the contents of the /db directory. Requires `root` privileges and asks for confirmation before committing the delete.
  
