Machine Status
====
Packages I need for setting up my development virtual machines.

https://serversforhackers.com/

[有哪些命令行的软件堪称神器？ - 知乎](https://www.zhihu.com/question/59227720/answer/578875058)

[#开发者]([https://sspai.com/tag/开发者) -> [写给工程师的 Ubuntu 20.04 最佳配置指南 - 少数派](https://sspai.com/post/60411)

### Dev2

2020-03-16:

Linux Mint 19.3 Cinnamon 64-bit (from Linux Mint's official website)

Boot in: EFI

    + set keyboard layout to DVORAK
    + add an user "Aaron"
(This is a VM Image made by VirtualBox, for running EFI in VirtualBox.)

Remarks: aaron, 42stephanxxxxxxx0693

2020-03-23:

Install: git, Django, python3.8 (`sudo apt install python3.8`)

Install: `tmux` (终端复用工具，替代 `screen`, `nohup`)

Install:  `htop`, `glances`[#](https://nicolargo.github.io/glances/), `nmon`, `bmon`, `syncthing`, `curl`, `tree`, `cloc`
Install: `theFuck` [#](https://github.com/nvbn/thefuck), `bat`, `prettyping`, `fzf`[#](https://github.com/junegunn/fzf), `htop`, `diff-so-fancy`, `fd`, `ncdu`, `tldr`, `cheat`[#](https://github.com/cheat/cheat), `cheat.sh`[#](https://github.com/chubin/cheat.sh), `jq`, 

Install:  `SpaceVim`[#](https://github.com/SpaceVim/SpaceVim), `NeoVim`[#](https://neovim.io/), `tig`, `mycli`[#](https://www.mycli.net/)[#](https://github.com/dbcli/mycli), `cloc`[#](http://cloc.sourceforge.net/)[#](https://github.com/AlDanial/cloc)

2020-04-06:
Install: `system-config-lvm`, `kvmp`, `partitionmanager` (Google: linux mount lvm2 partition -> linux mount lvm2 partition same name -> linux create lvm2 (https://linuxconfig.org/linux-lvm-logical-volume-manager) -> lvm2 gui)

2020-04-13: To determiner the speed of distro: `systemctl list-unit-files --state=enabled --no-pager`: Manjaro >> Ubuntu



2020-06-01:

Install: `openssh-server` for remote access.

config: `sudo apt install ssh openssh-server`, `sudo systemctl status ssh` (Google: linux ssh server -> https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-18-04/) (VSCode: https://code.visualstudio.com/docs/remote/ssh#_getting-started)

----

### Dev

2016-02-10:  
Linux Mint 17.3 Cinnamon 64-bit -> 18.1 (from Linux Mint's official website)

Boot in: EFI

    + set keyboard layout to DVORAK
    + add an user "Aaron"
(This is a VM Image made by VMWare Player 12, for running EFI in VirtualBox. A startup.nsh is prepared, and the bootx64.efi is copied to /BOOT/EFI/ too.)


Remarks: aaron, stephanxxxxxxx

----

2016-02-11:  
Install: python-dev, python 3.5.1, virtualenv, virtualenvwrapper

2016-02-12: 
Install: git, django, htop, nmon, syncthing, curl, tree

2016-02-15:  
Install: awesome, GVim, build-essential

2016-02-18:  
Install: Sublime

2016-02-22:  
Install: Docker-engine 1.10 (Ref: https://docs.docker.com/engine/installation/linux/ubuntulinux/)
Install: MariaDB-server 10.1 (Ref: Google: how to install MariaDB on Linux mint 17 -> https://downloads.mariadb.org/mariadb/repositories/ ->  `/etc/apt/sources.list.d/`)

2016-04-27:  
Docker-engine doesn't work, due to an `sudo apt-get update` error caused by an invalid address in `/etc/apt/sources.list.d/`, when I install MariaDB.
Fix: The address list in `/etc/apt/sources.list.d/`

2016-04-28:  
Install: Docker-engine 1.10

2016-07: update 2  
Upgrade: upgrade to [Linuxmint 18 "Sarah"](http://blog.linuxmint.com/?p=3068) , as it is released on 2016-06-30

2016-10-10:  
Install: rcconf, VSCode
Stop: MariaDB
Upgrade: [Docker-engine 1.12.1 build 23cf638](https://docs.docker.com/engine/installation/linux/ubuntulinux/),  
Install: then install [Docker Compose](https://docs.docker.com/compose/install/), install [Docker Machine](https://docs.docker.com/machine/install-machine/)

2017-02-09:  
Install: zlib1g-dev, re-compile python 3.5.1 with zlib (Google: python missing zlib -> http://stackoverflow.com/questions/17899291/should-i-re-install-python-again-for-zlib-module)

2017-02-12:  
Upgrade: to [Linux mint 18.1 "Sarah"](http://blog.linuxmint.com/?p=3181) , as it is released on 2016-12-16:  
Install:` mintupgrade` (Google: how to upgrade Linux mint 17.3 to 18 -> https://community.linuxmint.com/tutorial/view/2316)
Install: virtualenv, virtualenvwrapper

2019-07-27:
Install: Compile Python 3.8b2 (Google: how to compile python on linux -> https://solarianprogrammer.com/2017/06/30/building-python-ubuntu-wsl-debian/)

----
Optional to install:  PyCharm, VSCode, ansible, traceroute, mtr, nmon, rcconf / chkconfig, cpanel / [vestacp](https://vestacp.com/)

Optional to stop: MariaDB (when using docker for db)

after build-essential, before system-wide update



Ref:
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04
* https://www.digitalocean.com/community/tutorials/automating-initial-server-setup-with-ubuntu-18-04
*  https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04-quickstart -> https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-automate-initial-server-setup-on-ubuntu-18-04
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7
* https://wiki.centos.org/zh-tw/HowTos
* https://zhuanlan.zhihu.com/p/43776780 TLDR.sh
  * bat > cat
  * prettyping > ping
  * fzf > ctrl+r
  * htop > top
  * diff-so-fancy > diff
  * fd > find
  * tldr > man
  * ack || ag > grep
  * jq > grep et al
  * theFuck

----
