Packages I need for my development virtual machines.
----

2016-02-10
LinuxMint 17.3 Cinnamon 64-bit (from VMWare)
Boot in: EFI
+ set keyboard layout to DVORAK
+ add an user "Aaron"
(This is a VM Image made by VMWare Player 12, for running EFI in Virtualbox. A startup.nsh is prepared, and the bootx64.efi is copied to /BOOT/EFI/ too.)


aaron, stephanieh1010
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
Install: Docker-engine 1.10

--
To be Install:  PyCharm, ansible, traceroute, mtr

after build-essental, before system-wide update

Ref: 
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7
