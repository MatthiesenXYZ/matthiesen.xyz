---
draft: false
title: "Syncthing - Getting Started With the Node, Relay, and Discovery servers."
snippet: "A Getting Started Guide to Syncthing and Getting started with the Node, Relay, and Discovery servers."
image: {
    src: "/blog/tutorial-syncthing.png",
    alt: "Syncthing"
}
publishDate: "2023-12-12 12:00"
category: "Tutorial"
author: "Adam Matthiesen"
tags: [Open Source, Syncthing, Relay, Discovery Server, Node]
---

![Syncthing Relay Status Monitor](https://status-monitor.basestation.space/api/badge/22/status?label=BSN-SyncThing-Relay+&style=for-the-badge "Syncthing Relay Status Monitor")

| Table of Contents |
| ----------------- |
| [Introduction](#introduction) |
| [Getting Started with Relay-Discovery Server (Docker)](#getting-started-with-relay-discovery-server-docker) |
| [Setting up a node (Docker)](#setting-up-a-node-docker) |

## Introduction

My Tutorial is going to be a little backwards from the standard method, as I am going to show you how to setup a Relay, and Discovery server first, as this can be configured as just a client to the Master project to assist growth for a great Open Source Project that is free for us to use.  I personally run a Synthing Relay/Discovery Server that runs 24/7 as well as a Node for some data and file syncs.

## Getting Started with Relay-Discovery Server (Docker)

Below is my Docker-Compose(Portainer) script, the main things to note here that i have port forwarded are **22026 *Discovery Server Port*, 22067 *Relay Main Port*, and 22070 *Relay Server Status Port*** The Final port is used to comunicate with the main realys endpoint under the *POOLS* section.

```yaml
---
version: '3'

services:
  syncthing-relay-discovery:
    container_name: syncthing-relay-discovery
    restart: always
    image: t4skforce/syncthing-relay-discovery:latest
    environment:
      RATE_GLOBAL: '0'
      RATE_SESSION: '0'
      PROVIDED_BY: "Pretty Name Here"
      POOLS: "https://relays.syncthing.net/endpoint" # Make This entry "" to run a private relay.
      DISC_OPTS: '-debug'
    ports:
      - 22026:22026 # Discovery Server
      - 22067:22067 # Relay Server - Main Port
      - 22070:22070 # Relay Server Optional Statistics port for public relays pool
```

[GitHub: Syncthing Relay script](https://github.com/Adammatthiesen/docker-compose-scripts/blob/main/docker-compose/syncthing-relay-discovery.yml)

Once you have this container up and running and the above ports forwarded to your container, you should now be able to see your relay on [relays.syncthing.net](https://relays.syncthing.net/) if you opted to create a public relay.  

I used Cloudflare Tunnels (Zero Trust/Argo Tunnel) to create a Proxy for my domain to point to my dicovery server using ```https://discovery.example.com - <HTTP>:<DOCKERIP:22026>```

## Setting up a node (Docker)

This part is normally for someone who has a NAS or central system that will act as a Main server for data sync.  This *CAN* be setup in a two-system network but will be best setup when using more than 3 systems with 1 system being up 24/7.  If you do setup a two system setup, your *Server* must be up 24/7 to sync.

Below is the script for Docker-Compose (Portainer) The only ports you have to forward if you dont want to utilize a relay for data transfers are **TCP&UDP:22000**

```yaml
version: "2.1"
services:
  syncthing:
    image: lscr.io/linuxserver/syncthing:latest
    container_name: syncthing-node
    hostname: syncthing #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /path/to/syncthing-data/config:/config
      - /path/to/sync:/sync
    ports:
      - 8384:8384
      - 22000:22000/tcp #Node Port <Port Forward:TCP>
      - 22000:22000/udp #Node Port <Port Forward:UDP>
      - 21027:21027/udp #Local Port
    restart: unless-stopped
```

[GitHub: Syncthing Node Script](https://github.com/Adammatthiesen/docker-compose-scripts/blob/main/docker-compose/syncthing-node.yml)

You can pre-fill the Sync data you plan to sync between the systems for the initial setup, and after you start the sync it can be configured to Download, Download & Upload, or Upload.  In the Menu (```http://DOCKER-IP:8384/```) **ACTION** -> **SETTINGS** -> **CONNECTIONS** -> **Global Discovery Servers** you can put your link to your discovery server here.
