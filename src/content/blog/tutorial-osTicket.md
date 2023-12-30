---
draft: false
title: "osTicket - Quick Start Docker"
snippet: "osTicket is usasually a pretty quick and easy setup using their regular install method, but lets set it up using a Docker Container!"
image: {
    src: "/blog/tutorial-osticket.png",
    alt: "osTicket"
}
publishDate: "2023-12-24 12:00"
category: "Tutorial"
author: "Adam Matthiesen"
tags: [Open Source, osTicket, Docker,]
---

*First off due to it being Christmas Eve while writing this post,  **MERRY CHRISTMAS!** and a Happy new year!*

## Introduction

Below is my docker compose script used in Portainer(Can also be used as regular docker-compose.yml)  Ive left the cron scheduler uncommented for installation, please uncomment when the web gui asks you to at the end.

This really is a Copy paste setup, just change the password secrets before you run the ```docker compose up -d``` command!  You will then be able to access your new osTicket install at ```http://docker-ip:8080/scp``` with the Default login Username of ```ostadmin``` and Password ```Admin1```

### Docker Compose script

```yaml
---
version: '3'
services:
  mysql:
    image: mysql:5.7
    volumes:
      - "osticket-db1:/var/lib/mysql"
    environment:
      MYSQL_ROOT_PASSWORD: secretroot #CHANGE ME
      MYSQL_DATABASE: osticket
      MYSQL_USER: osticket
      MYSQL_PASSWORD: secretuser #CHANGE ME
  osticket:
    image: devinsolutions/osticket:latest
    volumes:
      - 'osticket-app:/var/lib/osticket'
    environment:
      MYSQL_HOST: mysql
      MYSQL_DATABASE: osticket
      MYSQL_USER: osticket
      MYSQL_PASSWORD: secretuser #CHANGE ME
    ports:
      - 8080:80
    restart: on-failure

volumes:
  osticket-db1:
    driver: local
  osticket-app:
    driver: local
  ```
  
More Information about the docker image used can be found on the [Github page](https://github.com/devinsolutions/docker-osticket)
