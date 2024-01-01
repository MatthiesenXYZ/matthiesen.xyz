---
draft: false
title: "Netboot.xyz - My Journey to Network Booting with Open Source"
snippet: "My journey learning and exploring ipxe and netboot.xyz, learning tips and tricks and how to boot windows and bootable images."
image: {
    src: "/blog/tutorial-netboot.png",
    alt: "NetbootXYZ"
}
publishDate: "2023-12-11 12:00"
category: "Tutorial"
author: adam-matthiesen
tags: [Open Source, W.I.P., Docker, Windows]
---

| Table of Contents |
| ----------------- |
| [Introduction](#introduction) |
| [Getting Started (Docker, The Easy Way)](#getting-started-docker-the-easy-way) |
| [Router Config (Default Boot file Options)](#router-config-default-boot-file-options) |
| [Booting other operating systems, Editing the Menu](#booting-other-operating-systems-editing-the-menu) |
| [Sources](#sources) |

## Introduction

This post is about my exploration into how to Netboot using Netboot.xyz, but as I quickly realized, Netboot.xyz is not as simple as it first seems.  Its based on ipxe.org's codebase and technology.  In fact, most of the resources on ipxe.org are directly relevent in Netbootxyz, from menu options and formating, to the way you boot operating systems.  The Documentation at the ipxe website helped me learn more about the process of how network booting with ipxe really worked, as well as they provide examples of how to utilize their software.  Which the reason I learned about them in the first place was after I first deployed Netboot.xyz for the first time and attempted a network boot, and before netboot.xyz launched there was the website for ipxe.org!  My first deployment was using docker, which worked quite well.

Because there are a ton of types of routers, in this post I will not be explaininng how to setup your router for network booting.  But a simple google search should be able to help you figure that out, as there are many ways to setup a network boot environment.  Including offloading your DHCP server to allow different options outside of some routers functions.  Again far out of the scope of this post.

### Getting Started (Docker, The Easy Way)

Since I utilize Portainer, I created a docker stack.  The Following is my the Docker Compose default script. You could also use this for a docker-compose.yml

```yaml
---
version: "2.1"
services:
  netbootxyz:
    image: ghcr.io/netbootxyz/netbootxyz
    container_name: netbootxyz
    environment:
      - MENU_VERSION=2.0.47 # optional
    volumes:
      - /path/to/config:/config # This is where you want to keep your configs, Highly recomended if you want to edit menus like I did.
      - /path/to/assets:/assets # This is for HTML based assets from the webserver hosted from port 8080
    ports:
      - 3000:3000 #WEB-GUI
      - 69:69/udp #TFTP
      - 8080:80 #HTTP
    restart: unless-stopped
```

If you want to use the Docker-CLI you can use the code below

```sh
docker run -d \
  --name=netbootxyz \
  -e MENU_VERSION=2.0.59             `# optional` \
  -p 3000:3000                       `# sets webapp port` \
  -p 69:69/udp                       `# sets tftp port` \
  -p 8080:80                         `# sets http port` \
  -v /local/path/to/config:/config   `# optional` \
  -v /local/path/to/assets:/assets   `# optional` \
  --restart unless-stopped \
  ghcr.io/netbootxyz/netbootxyz
  ```

### Router Config (Default Boot file Options)

Do to the nature of Router technology there is no magic instructions that covers all routers.  Below are the Boot files as well as an example configuration that will work with routers that support this feature. *I use a Unifi UDM-Pro but since that is not the only router technology out there I will not be going through how to configure your router. (There is also plenty of documentation online that can/will help you)*

#### Example Router entry

- NextServer/TFTP/Netboot: ```docker-host```
- File: ```ipxe/netboot.xyz.efi```

#### Default file values

| Bootfile Name | Description |
| ------------- | ----------- |
| netboot.xyz.kpxe | Legacy DHCP boot image file, uses built-in iPXE NIC drivers |
| netboot.xyz-undionly.kpxe | Legacy DHCP boot image file, use if you have NIC issues |
| netboot.xyz.efi | UEFI boot image file, uses built-in UEFI NIC drivers |
| netboot.xyz-snp.efi | UEFI w/ Simple Network Protocol, attempts to boot all net devices |
| netboot.xyz-snponly.efi | UEFI w/ Simple Network Protocol, only boots from device chained from |
| netboot.xyz-arm64.efi | DHCP EFI boot image file, uses built-in iPXE NIC drivers |
| netboot.xyz-arm64-snp.efi | UEFI w/ Simple Network Protocol, attempts to boot all net devices |
| netboot.xyz-arm64-snponly.efi | UEFI w/ Simple Network Protocol, only boots from device chained from |
| netboot.xyz-rpi4-snp.efi | UEFI for Raspberry Pi 4, attempts to boot all net devices |

### Booting other operating systems, Editing the Menu

So when I first started trying this i got extremly confused by Netboot.xyz's example by booting WinPE.  But Moddern versions of windows installers already include a perfectly usable WinPE that I was able to use, now in some circumstances you may need to build a WinPE with Custom drivers.

Below is my modification of **config/menus/menu.ipxe**

There is two ways to edit this file... you could log-in to the Web-GUI ```http://docker-host:3000``` or, you could edit the physical ```/local/path/to/config``` you linked in the docker startup above. *This part **REQUIRES** you to configure volume binds in order to configure and save between reboots.*

Menu Section (Line 43)

```plaintext
### Installers:
item --gap Installers:
#item mdt-wim ${space} Windows Deployment x64 (MDT-wim)
item win10ltsc ${space} Windows 10 Enterprise LTSC 22h2 x64 (net-iso)
item win1062023 ${space} Windows 10 June 2023 x64 (net-iso)
### Tools
item --gap Tools:
item macrium11 ${space} Macrium Reflect Win11 (net-iso)
```

item selection (Under :verify_sigs)

```plaintext
###Installers

#:mdt-wim
#kernel wimboot
#initrd http://<IP>:<PORT>/wim-boot/MDT/ipxe/install.bat  install.bat
#initrd http://<IP>:<PORT>/wim-boot/MDT/ipxe/winpeshl.ini winpeshl.ini
#initrd http://<IP>:<PORT>/wim-boot/MDT/Boot/BCD          BCD
#initrd http://<IP>:<PORT>/wim-boot/MDT/Boot/boot.sdi     boot.sdi
#initrd http://<IP>:<PORT>/wim-boot/MDT/boot.wim          boot.wim
#boot || goto main_menu

:win10ltsc
kernel wimboot
initrd http://<IP>:<PORT>/wim-boot/Win10LTSC22h2/ipxe/install.bat  install.bat
initrd http://<IP>:<PORT>/wim-boot/Win10LTSC22h2/ipxe/winpeshl.ini winpeshl.ini
initrd http://<IP>:<PORT>/wim-boot/Win10LTSC22h2/boot/bcd          BCD
initrd http://<IP>:<PORT>/wim-boot/Win10LTSC22h2/boot/boot.sdi     boot.sdi
initrd http://<IP>:<PORT>/wim-boot/Win10LTSC22h2/sources/boot.wim  boot.wim
boot || goto main_menu

:win1062023
kernel wimboot
initrd http://<IP>:<PORT>/wim-boot/Win10_6-2023/ipxe/install.bat  install.bat
initrd http://<IP>:<PORT>/wim-boot/Win10_6-2023/ipxe/winpeshl.ini winpeshl.ini
initrd http://<IP>:<PORT>/wim-boot/Win10_6-2023/boot/bcd          BCD
initrd http://<IP>:<PORT>/wim-boot/Win10_6-2023/boot/boot.sdi     boot.sdi
initrd http://<IP>:<PORT>/wim-boot/Win10_6-2023/sources/boot.wim  boot.wim
boot || goto main_menu

###Tools

:macrium11
kernel wimboot
initrd http://<IP>:<PORT>/wim-boot/macrium/w11/Boot/BCD          BCD
initrd http://<IP>:<PORT>/wim-boot/macrium/w11/Boot/boot.sdi     boot.sdi
initrd http://<IP>:<PORT>/wim-boot/macrium/w11/sources/boot.wim  boot.wim
boot || goto main_menu
```

The **install.bat** files are identical for each directory, containing the following (Username and password depend on your setup. In my case I hosted the files on my NAS.)

```bat
wpeinit
net use F: \\<IP>\<SHARE>\wim-boot\<OS Source Files> /user:<User> <Pass>
F:\setup.exe
```

The **winpeshl.ini** file are also identical for each directoy, containing the following

```bat
[LaunchApps]
"install.bat"
```

The Files for the Windows Installers are from **Offical Windows ISO** files.  Just extracted to a network storage. Then you copy the boot files listed above to the Assets folder in the docker container.

I Have MDT commented out due to some issues I was having with it, it worked at one point but then suddenly stopped working... It may work for you but it also may not.  its just there for reference.  As for booting Linux I just left the rest of Netboot.xyz's Menu in tact, and it works perfectly!

#### Sources

- [Netboot XYZ Docs](https://netboot.xyz/docs/) - Netboot.xyz Documentation
- [iPxE.org](https://ipxe.org/) - Helped me understand booting windows sources
