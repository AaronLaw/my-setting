Packages I need for my development virtual machines.
----

2016-02-10
LinuxMint 17.3 Cinnamon 64-bit (from LinuxMint's official website)
Boot in: EFI
+ set keyboard layout to DVORAK
+ add an user "Aaron"
(This is a VM Image made by VMWare Player 12, for running EFI in Virtualbox. A startup.nsh is prepared, and the bootx64.efi is copied to /BOOT/EFI/ too.)


aaron, stephanxxxxxxx
--
2016-02-11:
Install: python-dev, pyhton 3.5.1, virtualenv, virtualenvwrapper

2016-02-12:
Install: git, django, htop, nmon, syncthing, curl, tree

2016-02-15:
Install: awesome, GVim, build-essential

2016-02-18:
Install: Sublime

2016-02-22:
Install: Docker-engine 1.10 (Ref: https://docs.docker.com/engine/installation/linux/ubuntulinux/)
Install: Mariadb-server 10.1 (Ref: Google: how to install mariadb on mintlinux 17 -> https://downloads.mariadb.org/mariadb/repositories/ ->  `/etc/apt/sources.list.d/`)

2016-04-27:
Docker-engine doesn't work, due to an `sudo apt-get update` error caused by an invalid adderss in `/etc/apt/sources.list.d/`, when I install Mariadb.
Fix: The adderss list in `/etc/apt/sources.list.d/`

2016-04-28:
Install: Docker-engine 1.10

2016-07: update 2
Upgrade to Linuxmint 18 "Sarah" (http://blog.linuxmint.com/?p=3068) , as it is released on 2016-06-30

2016-10-10:
Upgrade: Docker-engine 1.12.1 build 23cf638 (https://docs.docker.com/engine/installation/linux/ubuntulinux/),  
Install: then install Docker Compose (https://docs.docker.com/compose/install/), install Docker Machine (https://docs.docker.com/machine/install-machine/)

2017-02-09:
Install: re-complie python 3.5.1 with zlib (Google: python missing zlib -> http://stackoverflow.com/questions/17899291/should-i-re-install-python-again-for-zlib-module)

--
Optional to install:  PyCharm, VSCode, ansible, traceroute, mtr, nmon, rcconf / chkconfig, cpanel / vestacp (https://vestacp.com/)

Optional to stop: mariadb (when using docker for db)

after build-essental, before system-wide update

Ref: 
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7
