---
draft: false
title: "Docker, Docker-Compose, and Portainer-CE Setup"
snippet: "Setup Process of Docker, Docker Compose, and Portainer-CE on Ubuntu"
image: {
    src: "/blog/tutorial-docker.png",
    alt: "tutorial docker"
}
publishDate: "2023-12-31 12:00"
category: "Tutorial"
author: "Adam Matthiesen"
tags: [Open Source, Docker, Docker Compose, Portainer, Tutorial]
---

| Table of Contents |
| ----------------- |
| [Introduction](#introduction) |
| [Docker Installation](#docker-installation) |
| [Docker Compose Installation](#docker-compose-installation) |
| [Portainer-CE Installation](#portainer-ce-installation) |

# Introduction

In this Tutorial we are going to walk through the setup process of Docker, Docker Compose, and Portainer-CE, on a FRESH install of Ubuntu ( *In my case I use Ubuntu 22.04* ) since we have been doing a bunch of tutorials that were using Docker Compose.  Docker for Ubuntu will work on any of the following versions of 64-bit Ubuntu

- Ubuntu Mantic 23.10
- Ubuntu Lunar 23.04
- Ubuntu Jammy 22.04 (LTS)
- Ubuntu Focal 20.04 (LTS)

*Docker Engine for Ubuntu is compatible with x86_64 (or amd64), armhf, arm64, s390x, and ppc64le (ppc64el) architectures.*

## Docker Installation

Before we install docker make sure you remove any previous or unofficial versions of docker possible installed on the system (Even fresh installs may install a different version of docker.)

Run the following command to remove all possible conflicts.

```sh
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

```apt-get``` might report that you have nothing installed.  That is a good thing.  Once everything has been completed continue to the next step.

It's now time to setup our apt repository for Docker, to do this start by running the following command to update your Ubuntu Install... this should go quick if you did updates while installing Ubuntu.

```sh
sudo apt-get update && sudo apt-get upgrade -y
```

Once you have completed updates and upgrade, you are ready to run the following commands.

```sh
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

Then run the following command to add the repository

```sh
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Now your ready to update your apt repository.

```sh
sudo apt-get update
```

Time to install Docker and test it using the ```hello-world``` test image.

To Install the latest Docker version, run:

```sh
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

After installation is finished run the following command to make sure everything is working.

```sh
sudo docker run hello-world
```

Once that is done, the next step is to give the regular user access to docker.

**(WARNING: The ```docker``` Group grants root-level privileges to any user asigned to the group.)**

There is two ways to do this,  Today we are going to go with the easy way but the Docker website dose provide a way to run Docker in Rootless mode, if you'd like to do this please [Follow This Link](https://docs.docker.com/engine/security/rootless/)

To get started create the ```docker``` group and add the user:

1. Create the group

```sh
sudo groupadd docker
```

2. Add your user to the group

```sh
sudo usermod -aG docker $USER
```

3. Log out and log back in or use the command ```newgrp docker``` to refresh your changes *(According to the Docker Docs, If your Running Linux in a virtual machine, Linux may require to you RESTART the virtual machine for changes to take effect.)*
4. If Everything Worked, You should now be able to use the following command without the ```sudo``` command needed.

```sh
ddocker run hello-world
```

If you initially ran Docker CLI commands using ```sudo``` before adding your user to the ```docker``` group, you may see the following error:

```console
WARNING: Error loading config file: /home/user/.docker/config.json -
stat /home/user/.docker/config.json: permission denied
```

This error indicates that the permission settings for the ```~/.docker/``` directory are incorrect, due to having used the sudo command earlier.

To fix this problem, either remove the ```~/.docker/``` directory (it's recreated automatically, but any custom settings are lost), or change its ownership and permissions using the following commands:

```sh
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R

sudo chmod g+rwx "$HOME/.docker" -R
```

You should no longer see the Error, and Docker is now installed.  Time to move on to Docker-Compose.

### Docker Compose Installation

**IMPORTANT: Effective July 2023, Docker Compose V1 stopped receiving updates and is no longer in new Docker Desktop Realeases.  Compose V2 has replaced it and is now integrated into all current Docker Desktop versions.**

Lets get started, Docker Compose used to be really complicated... but now its a one line command once you setup Docker the way above.  Run the following command:

```sh
sudo apt-get install docker-compose-plugin
```

After running the command above confirm docker-compose is installed by running the following command:

```sh
docker compose version
```

Expected output: (**vN.N.N is a placeholder text standing for the latest version.**)

```console
Docker Compose version vN.N.N
```

Time to move on to Portainer-CE

### Portainer-CE Installation

Portainer consts of two parts, The *Server* and the *Agent*. Both run as lightweight Docker containers on a Docker engine.  To start you need the server Installation.  So we will focus on that.  By Default, Portainer Server will expose the UI over ```9443``` and expose a TCP tunnel server over port ```8000``` the latter is optional and is only required if you plan to use the Edge compute features with Edge agents.

Now, Lets get started.  First we need to create a volume for Portainer to store its database:

```sh
docker volume create portainer_data
```

Then run the following command to Download and Install the Portainer Server container:

```sh
docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
```

The above command will start a Portainer Server with the following Ports available:

- 8000: Edge Connections (Optional)
- 9000: WebUI HTTP (Optional)
- 9443: HTTPS Self-Signed SSL by Default 

You can now login either by ```http://SERVER-IP:9000``` or ```https://SERVER-IP:9443```

Then Continue with Portainer inital setup by Creating the first user, and you now have a functioning Portainer install.  You may need to set your install to use the Local standalone environment, but it walks you through that process.

Here are some useful portainer stacks that I use in my own Portainer installs.  Just copy the contents of a specific YML and paste it into the stack creator: 

[GitHub: Docker Compose/Portainer Scripts](https://github.com/Adammatthiesen/docker-compose-scripts)