---
title: Linux commands
date: 2021-04-19 04:40:11
updated: 2021-07-28 03:40:11
tags:
    - command
	- linux
	- cheatsheet
categories:
    - computer
---


#command on using Linux.

For the *footnotes*: `[^1]` for the usage, info, reference of a command; `[^command_name]` for the official website of a command.


See also tips & what to do on [[Setup Linux machine]].


## Cheat Sheet

#cheatsheet
Use lower case on filename ^[@see: [为什么文件名要小写？ - 阮一峰的网络日志](https://www.ruanyifeng.com/blog/2017/02/filename-should-be-lowercase.html)
]

### Get my IP Address

- `ip addr`
- `ifconfig`
- `hostname -I`


### Check kernel version

- `uname -a`. Check it, after [[Upgrade Linux kernel]].
- `uname -r`
- `cat /proc/version`
- `dmesg | grep Linux`

### Check num of CPU

- `nproc`
	- and use it in make: `make -j $(nproc)` (@see [[Upgrade Linux kernel]])
- Use the `taskset` utility, which allows us to control the affinity of a process. [^26]

Check it with Python [^26]
```python
# Python 2.6+
try:
    import multiprocessing
    return     multiprocessing.cpu_count()
except (ImportError, NotImplementedError):
    pass
```

```python
import psutil
psutil.cpu_count()
```

Check it with Go [^34]
```go
if runtime.NumCPU() < 10 && os.Getenv("CI") \== "" { // don't bother on slow hardware

t.Skip("this is slow")

}
```

https://play.golang.org/p/cuaf2ZHLIx
```go

package main

import (  
    "fmt"
    "runtime"
)

func main() {
    fmt.Println(runtime.NumCPU())
}
```

### linux freeze process

linux freeze process is useful when hdd out of space when plotting.

Q: What can I do when hard drive run out of space when half a way during plotting?
-> Google: linux freeze process https://superuser.com/questions/485884/can-a-process-be-frozen-temporarily-in-linux/485888



### Killing process

Simply kill a process with `htop` or kill it with `kill`+\<pid\>.

- `kill -15 <pid>` >> `kill -9 <pid>`
	- Let process to settle resources with R.I.P. (-> -15 >> -9)
- `pkill -f pattern` to kill a process by process pattern
- `for pid in $(ps -ef | awk '/some-search/ {print $2}'); do kill -15 $pid; done`

### Recover deleted commands

Recover deleted commands in Linux: busybox, coreutils  [^33] [^coreutils], moreutils [^moreutils]


### Update & Replacement

#convenient 
- `bat` >> `cat`
- `tmux` >> GNU `screen`

----

## Common / General

- `find`
- `grep`
- `ps` -> `ps aux`
- `uname`
- `hostname` to see -> `hostnamectl`to edit
- `alias` [^4]
- `lsblk`
- `lsusb`
- `lspci`
- `lsof` to list open file

& more in [Coreutils - GNU core utilities](https://www.gnu.org/software/coreutils/)

## Power-tools

- `powerline` [^Powerline]
- `tmux`
- `tldr`
- `syncthing`
- `ansible` for DSC

## Progress
- `pv`, acronym of pipe viewer, to monitor the progress of data through a pipe [^20]
- `progress` 

## For fun!

- `cmatrix`
- `screenfetch`
- `neofetch`

## Asking help - Read the doc

- `man`
- `info`
- `tldr` [^8] [^tldr]
- `apropos`
- `The fuck` [^12] [^thefuck]
	- install: `sudo pip3 install thefuck`
- `eg` (install: `pip install eg`) [^19]

## Asking help - from the web, for developer

- `cheat.sh` [^cheat.sh]
	- https://cheat.sh/ for online search
- `cheat` [^cheat]
- Devhints : [Devhints — TL;DR for developer documentation](https://devhints.io) #cheatsheet 
- `how2`

## list

- `ls`
- `exa` is an improved `ls`. [^11] [^exa] [^35]
- `cat`
- `bat` is a `cat` clone & `less` with syntax highlight. [^bat]


## Search
- `find`
- `fd-find` [^11], [^13], [^fd-find]
- `fzf` [^11], [^13] [^22]
- `happyfinder` [^11], [^13]
- `ripgrep` [^ripgrep]


## Finding

- `whatis`
- `locate`
- `whereis`
- `which`
- `history` & `!!` (bash)
- `search <command>` (fish)
- `find`
- `fd`
-

## Remote access

- `ssh`
- mount remote server file system (in [[FUSE]]) with `sshfs` [^sshfs] [^27]
	1. Create sshfs mount dir: `sudo mkdir /mnt/remote_machine`
	2. mount it: `sshfs <user>@<ip addr> : /home/<user> /mnt/remote_machine`
	3. check mount point with `df -hT`
	4. Finally, unmount it: `unmount /mnt/remote_machine`

## Download

- wget
- curl
- aria2c
- httpie

## Rename

- `rename` by Larry Wall [^21]
- `rename` that node-rename-cli [^rename]
- `mmv`[^21]
- `renameutils` [^21]
- `Vimv` is a command line utility to bulk rename files using **Vim** editor [^21] [^vimv]
- F2  https://mp.weixin.qq.com/s/CA1HQtDiHU_l1nMSRYJxRg


## Text processing

- `sed` [^14]
- `awk`  [^14]


## Editor

- `vim` https://mp.weixin.qq.com/s/NbgxpapUkKf30VNQOoBKlQ
	- cheatsheet: [Vim cheatsheet](https://devhints.io/vim)
- `nano`
- `code` for [[VS Code]] / `code-insiders`

## Hex Viewer

- `hexyl` [^hexyl]


## Fingerprint

- `md5sum FILE`
- `openssl dgst -sha256 FILE`
	- ```MESSAGE DIGEST COMMANDS
md2 MD2 Digest
md5 MD5 Digest
mdc2 MDC2 Digest
rmd160 RMD-160 Digest
sha SHA Digest
sha1 SHA-1 Digest
sha224 SHA-224 Digest
sha256 SHA-256 Digest
sha384 SHA-384 Digest
sha512 SHA-512 Digest```


## Shell
- `cat /etc/shells` to see what shells are available on the system.
- `bash`
	- cheatsheet: [Bash scripting cheatsheet](Bash scripting cheatsheet)
- `zsh` and `oh-my-zsh` [^30] [^oh-my-zsh]
	- Powerlevel9k to theming zsh
	- chatsheet: [终极 Shell | MacTalk-池建强的随想录](macshuo.com/?p=676)
- `fish` and 'on-my-fish' `omf`[^oh-my-fish]
	- cheatsheet: [Fish shell cheatsheet - Devhints](https://devhints.io/fish-shell)
	- [How To Install Fish, The Friendly Interactive Shell, In Linux - OSTechNix](https://ostechnix.com/install-fish-friendly-interactive-shell-linux/)
	- [Fish shell 入门教程 - 阮一峰的网络日志](www.ruanyifeng.com/blog/2017/05/fish_shell.html)
        - [My Fish shell workflow for coding - YouTube](https://www.youtube.com/watch?v=KKxhf50FIPI)
- pysh [^pysh]


## Resources limit / restricting / allocation

- `cpulimit` [^5] [^cpulimit] to prevent overheat with long-run processes, such as [[Cryptomining]] -> [[Limit CPU usage]]
- `nice` value.
- `cputhrottle`  [^36]
- Google: linux gpu limit


## Process

- `ps aux`
- `pstree`
- `pgrep`
- `pkill`
- `ssh` -> `mosh` Remote terminal application that allows roaming, supports intermittent connectivity, and provides intelligent local echo and line editing of user keystrokes.



### Process control system for UNIX

- https://github.com/Supervisor/supervisor

## Task management

- `<command> &`
- 使用 `nohup` 或 `disown` 使一個後臺程序持續運行。
- `ctrl-z`
- `ctrl-c`
- `kill`
	- `kill -t <pid>`
- `jobs`
	- `fg`
	- `bg`

## User Management
- `usermod` to change user name [^28]

## Be dangerous

- Shell bomb / Fork bomb: `fork() {
    fork | fork &
}
fork` -> `:(){ :|:& };:` [^fork bomb]
- Delete it forever: `rm -f /`

## System status & Monitoring


- `htop`
- `top`
- `atop`
- `vtop`
- `gtop`
- `ctop`
- `glances`
- `bpytop` (former: `bashtop`) (install: `pip install bpytop`)
- `cockpit` Cockpit project by Redhat [^cockpit]
- `nmon`
- `psutil` [^psutil]
- `Prometheus`
- `sar`
- `vmstat`
- `uptime`
- `strace`
- `iotop`
- `nethogs`
- `iostat`
- `mpstat`
- `free` shows memory usage.
- `uptime`
- `dmesg` shows info of Linux booting.
- `bind` shows keyboard key binding.
- `dstat`
- `free`
- `vmstat`


## Dashboard

- `sampler` [^sampler]
- `grafana` [^grafana]
- `psdash` [^16] [^pydash]

## Dashboard via web
- cockpit，pydash，linux-dash,Scout_Realtime https://mp.weixin.qq.com/s/jBWq_pEva-uHiBW4kn8QpQ


## Benchmark (command-line benchmarking)

- `time` to see how long a command takes.
- `hyperfine` benchmarks commands throught the command line.[^hyperfine]
- `sysbench` to benchmark CPU, memory, I/O  [^29]
- `7z b`
- https://zhuanlan.zhihu.com/p/348894047

## Backup

- duplicati
- `restic`[^17] [^restic]
- `rsync` -> [Full system backup with rsync](https://wiki.archlinux.org/index.php/full_system_backup_with_rsync)

## Storage

[Storage Concepts And Technologies Explained In Detail - OSTechNix](https://ostechnix.com/storage-concepts-and-technologies-explained-in-detail/)

- `rsync` >> `cp`
- `fsck` on an unmount partition to fix error [^6] [^7]
- Check bad sector with `badblocks` when using a failure hard drive [^1] -> [[Fix a hard drive]]
    -  -> Use info from `badblocks` with `fsck` [^2]
-  `diskscan` [^diskscan]
- `samba`
- `iometer`
- `du` to show file & directory usage.
- `dd` to backup & restore of block devices.
- `df` to show info of disks.
- `smartmontools` & `smartctl` for SSD endurance [^SSD Endurance].
- 你可以通過 “hdparm -tT /dev/hda” 來測試 “/dev/hda” 硬碟的訪問速度  [^25]

## Disk
- LVM https://devconnected.com/logical-volume-management-explained-on-linux/

## Network

- `ifconfig`
- `ip`
- `dig`
- ping，tracert，nslookup 
- mtr 全称 my traceroute，是一个把 ping 和 traceroute 合并到一个程序的网络诊断工具。https://mp.weixin.qq.com/s/_7liuv3_U57VLzVHJstIcg
- `route`
- `netstat`
- `iptraf` & `iptraf-ng`
- `iftop`
- `ntop`
- `nload`
- `nmap` [^3]
- `netcat`

https://github.com/herrbischoff/awesome-command-line-apps#automation


## GPU

- `psensor` [^24]

## Services & Daemon

- `sshd`
- `dhcpd`
- `mysqld`
- `httpd` is Apache
- `rsyncd` for rsync
- `lsyncd` (Live Syncing Daemon) for sync local and remote directories [^32]

## Scheduler

- `at` for one shot.
- `crontab` for cron job (regular scheduling). [^37]

## OS Emulation & Translation

- Wine, a free and open-source compatibility layer that helps us to install and run applications and games developed for Windows on Linux and Unix-like operating systems.
- Dosbox,  to run good-old MS-DOS games and defunct C++ compilers like Turbo C++ in Linux.
- Anbox, for Android apps. [^Anbox]
- Darling is a translation layer that lets you run macOS software on Linux [^31]

## Automation

Browser Automation: selenlum
GUI automation: Pyautogui

## Video Download

- `youtube-dl` (`install: python3 -m pip intall youtube-dl`)
- `coursera-dl`

## Execute shell command over SSH

- Fabric
- is a tool used for automating routine shell commands over SSH,
- is a deployment management framework written in Python which makes remotely managing multiple servers incredibly easy
- `ssh <user>@<ip addr>  <command to be issued>`


## Develop

- `cloc` [^15]
- `pygount`
-  `loc` [^loc]

## Git

- `tig`
- `GitUI` [^9] [^GitUi] 
- github1s - https://github.com/conwnet/github1s
- pre-commit [^23]

## Package Manager

- `pip` for Python language
  - `python39 -m pip` with use of Python3.9
  - `python -m` with use of a virtual environment activated of Python
- `npm` for Javascript & node.js
- `cargo` for Rust language

## Python

https://awesome-python.com

### virtualenv

- `venv` is a package shipped with Python 3, which you can run using `python3 -m venv` It serves the same purpose as virtualenv, but only has a subset of its features. [^18]
- `python3 -m venv <project-venv>` -> `source ./project-venv/bin/activate` -> `pip install <package> -> ``deactivate`
- `virtualenv` & `virtualenvwrapper` [^18]

### Manage Python versions

- `pyenv` is a bit different to virtual envo -> `pyenv` is used to isolate Python versions. -> manages different python versions. [^18] 是 requests 作者 Kenneth Reitz 大神写的一个 python 虚拟环境管理工具, 结合了 pip 和 virtualenv 的功能

## MySQL client
- `mycli`
- `usql`

## Ansible
Ansible is a configuration management and orchestration tool. It works as an IT automation engine.

- [[Manage machine with Ansible]]

## Docker
Docker is a docker to provide isolated envo: ensure dev envo & production envo are the same.

https://mp.weixin.qq.com/s/KJZn-y4PBU2rnjE3g7AbIQ
Docker 架構 https://mp.weixin.qq.com/s/1uDn4CKitQhU04OTA9F_ZA
## Kubernetes

https://mp.weixin.qq.com/s/eSLunx8-4XGlA-FOzyoZrw



Reference:
- Linux administration: Google: xxx handbook, xxx wiki
    - https://www.debian.org/doc/manuals/debian-reference/ch09.zh-tw.html
    - https://www.debian.org/doc/manuals/debian-handbook/index.zh-cn.html
    - https://debian-handbook.info/browse/zh-TW/stable/
    - [系統 | 管理指南 | SUSE Linux Enterprise Server 15](https://documentation.suse.com/zh-tw/sles/15-GA/html/SLES-all/part-system.html)
    - Arch Linux handbook
    - Gentoo handbook
- Google: Art of command-line -> - https://github.com/jlevy/the-art-of-command-line
- https://github.com/topics/ls -> https://github.com/jaywcjlove/linux-command
- Google: Awesome command-line -> https://github.com/agarrharr/awesome-cli-apps
- https://github.com/alebcay/awesome-shell
- https://www.reddit.com/r/linuxquestions/comments/ntdm7m/good_linux_networking_tutorial/ -> https://www.billdietrich.me/LinuxNetworking.htmlhttps://www.reddit.com/r/linuxquestions/comments/ntdm7m/good_linux_networking_tutorial/ -> https://www.billdietrich.me/LinuxNetworking.html
- to alias: [10 个 Linux 中超方便的 Bash 别名 - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/35996.html)
- [30 Linux System Monitoring Tools Every SysAdmin Should Know - nixCraft](https://www.cyberciti.biz/tips/top-linux-monitoring-tools.html)
- [Monitoring Tools Archives - OSTechNix](https://ostechnix.com/category/monitoring-tools/)
- [Category System monitors - ArchWiki](https://wiki.archlinux.org/index.php/Category:System_monitors)
- [Linux Hint - Exploring and Master Linux Ecosystem](https://linuxhint.com/)
- "How To Add Route on Linux – devconnected" https://devconnected.com/how-to-add-route-on-linux/
- 2021-07-01 [给你的终端加点料 —— 7 个让终端更好用的小工具 - 少数派](https://sspai.com/post/59666 )




[^1]: [Linux 使用 badblocks 指令測試硬碟、隨身碟、記憶卡壞軌與修復教學 - G. T. Wang](https://blog.gtwang.org/linux/linux-badblocks-command-search-for-bad-blocks-tutorial/)
[^2]: https://man.linuxde.net/badblocks
[^3]: https://www.cyberciti.biz/networking/nmap-command-examples-tutorials/
[^4]: https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
[^5]: `cpulimit` attempts to limit the cpu usage of a process (expressed in percentage, not in cpu time).  This is useful to control batch jobs, when you don't want them to eat too much cpu. It does not act on the nice value or other scheduling priority stuff, but on the real cpu usage.
[^6]: 2021-04-20 Google: linuxmint initramfs ->  [Linux Mint initramfs prompt at boot](https://prognotes.net/2018/04/linux-mint-initramfs-prompt-at-boot/), [#Linux | How to fix Linux Mint initramfs Prompt at Boot](https://medium.com/@aterro51/linux-how-to-fix-linux-mint-initramfs-prompt-at-boot-a6bced4fe49f).  I run `fsck` with a live USB on `/dev/sda` on a notebook computer to fix Linux not boot due to sector corruption on partition .
[^7]: [How To Fix Busybox Initramfs Error On Ubuntu - OSTechNix](https://ostechnix.com/how-to-fix-busybox-initramfs-error-on-ubuntu/)
[^8]: [Good Alternatives To Man Pages Every Linux User Needs To Know](https://ostechnix.com/3-good-alternatives-man-pages-every-linux-user-know/)
[^9]: [GitUI：Linux CLI 查看 Git Repository 的圖形化工具 – Tsung's Blog](https://blog.longwin.com.tw/2021/04/gitui-linux-cli-git-repository-gui-2021/#more-13110)
[^10]: [推荐一款比 Find 快 10 倍的搜索工具 FD - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/15017.html)
[^11]: [25 个 Linux 下的炫酷又强大的命令行神器，你用过其中哪几个呢？ - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/28627.html)
[^12]: Google: awesome command-line -> https://github.com/agarrharr/awesome-cli-apps
[^13]: https://github.com/agarrharr/awesome-cli-apps
[^14]: https://github.com/learnbyexample/Command-line-text-processing
[^15]: [代码统计利器 Cloc - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/4004.html)
[^16]: [查看 Linux 系统信息的 Web 面板 psdash - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/14968.html)
[^17]: [推荐一款史上最强跨平台、多端加密同步神器 Restic - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/42308.html)
[^18]: [python - What is the difference between venv, pyvenv, pyenv, virtualenv, virtualenvwrapper, pipenv, etc? - Stack Overflow](https://stackoverflow.com/questions/41573587/what-is-the-difference-between-venv-pyvenv-pyenv-virtualenv-virtualenvwrappe)
[^19]: [How To Display Linux Commands Cheatsheets Using Eg - OSTechNix](https://ostechnix.com/how-to-display-linux-commands-cheatsheets-using-eg/)
[^21]: [6 Methods To Rename Multiple Files At Once In Linux](https://ostechnix.com/how-to-rename-multiple-files-at-once-in-linux/)
[^20]: [How To Use Pv Command To Monitor The Progress Of Data In Linux](https://ostechnix.com/monitor-progress-data-pipe-using-pv-command/)
[^22]: [fzf 簡化你的終端機開發生活 | My.APOLLO](https://myapollo.com.tw/zh-tw/fzf-ease-your-life/)
[^23]: [用 pre-commit 提升程式碼品質 | My.APOLLO](https://myapollo.com.tw/zh-tw/pre-commit-the-best-friend-before-commit/)
[^24]: Google: rslsync -> [使用 Resilio Sync 进行同步 | Memo](shuokay.com/2017/03/07/resilio-sync/) -> [Ubuntu Memo | Memo](shuokay.com/2016/01/01/ubuntu-memo/)
[^25]: https://www.debian.org/doc/manuals/debian-reference/ch09.zh-tw.html#_optimization_of_hard_disk
[^26]: [system information - How to find out the number of CPUs using python - Stack Overflow](https://stackoverflow.com/questions/1006289/how-to-find-out-the-number-of-cpus-using-python)
[^27]: 2021-04-26 Google: linux remote file system -> [How to Mount Remote Linux Filesystem or Directory Using SSHFS Over SSH](https://www.tecmint.com/sshfs-mount-remote-linux-filesystem-directory-using-ssh/)
[^28]: [How Do I Change My Username in Linux? – Linux Hint](https://linuxhint.com/change-my-username-in-linux/)
[^29]: [How to Use Sysbench for Linux Performance Testing? – Linux Hint](https://linuxhint.com/use-sysbench-for-linux-performance-testing/)
[^30]: [How to use themes on ZSH – Linux Hint](https://linuxhint.com/use-themes-zsh/)
[^31]: [Run MacOS Software On Linux Using Darling - OSTechNix](https://ostechnix.com/run-macos-software-on-linux-using-darling/)
[^cpulimit]: https://github.com/opsengine/cpulimit
[^32]: [How To Synchronize Local And Remote Directories In Linux - OSTechNix](https://ostechnix.com/synchronize-local-remote-directories-linux/)
[^33]: [How To Restore Or Recover Deleted Commands In Linux - OSTechNix](https://ostechnix.com/how-to-restore-or-recover-deleted-commands-in-linux/)
[^34]: https://github.com/filecoin-project/lotus/search?q=numcpu
[^35]: https://mp.weixin.qq.com/s/JORJpCAB3kS2_uiP8oIsQQ
[^36]: [macOS 如何限制进程 CPU 占用 - 少数派](https://sspai.com/post/67331 )
[^37]: [How to use cron on Linux | Opensource.com](https://opensource.com/article/21/7/cron-linux )


[^Powerline]: https://github.com/powerline/powerline
[^cockpit]: https://cockpit-project.org/guide/latest/
[^fork bomb]: https://zh.wikipedia.org/wiki/Fork%E7%82%B8%E5%BC%B9
[^GitUI]: https://github.com/extrawurst/gitui/releases
[^fd-find]: https://github.com/sharkdp/fd
[^bat]: https://github.com/sharkdp/fd -> https://github.com/sharkdp/bat
[^hexyl]: https://github.com/sharkdp/fd -> https://github.com/sharkdp/hexyl
[^hyperfine]: https://github.com/sharkdp/fd -> https://github.com/sharkdp/hyperfine
[^pysh]: https://github.com/sharkdp/fd -> https://github.com/sharkdp/pysh
[^exa]: [25 个 Linux 下的炫酷又强大的命令行神器，你用过其中哪几个呢？ - 奇妙的 Linux 世界](https://www.hi-linux.com/posts/28627.html) -> https://github.com/ogham/exa
[^rename]: Google: awesome command-line -> https://github.com/agarrharr/awesome-cli-apps -> -> https://github.com/jhotmann/node-rename-cli
[^sampler]: https://github.com/topics/command-line -> https://github.com/sqshq/sampler
[^psutil]: https://github.com/giampaolo/psutil
[^grafana]: https://github.com/grafana/grafana
[^loc]: Google: alternative to cloc -> [A fast cloc replacement written in rust programming](https://www.reddit.com/r/programming/comments/59bjoy/a_fast_cloc_replacement_written_in_rust/) -> https://github.com/cgag/loc
[^psdash]: https://github.com/Jahaja/psdash
[^restic]: https://github.com/topics/deduplication -> https://github.com/restic/restic
[^SSD Endurance]: https://github.com/Chia-Network/chia-blockchain/wiki/SSD-Endurance
[^diskscan]: Google: linux hdd low level format -> [Low level format of hard drive - Ask Ubuntu ](https://askubuntu.com/questions/253096/low-level-format-of-hard-drive) -> https://github.com/baruch/diskscan/
[^sshfs]: 2021-04-26 [40 Linux Server Hardening Security Tips [2019 edition] - nixCraft](https://www.cyberciti.biz/tips/linux-security.html) -> [Redhat Enterprise Linux securely mount remote Linux _ UNIX directory or file system using SSHFS - nixCraft](https://www.cyberciti.biz/tips/rhel-centos-mounting-remote-filesystem-using-sshfs.html) -> https://github.com/libfuse/sshfs
[^oh-my-zsh]: Google: theming zsh ->  https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
[^oh-my-fish]: Google: theming fish -> https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md
[^Anbox]: [Anbox](https://anbox.io/)
[^Darling]: https://www.darlinghq.org/, https://github.com/darlinghq/darling
[^tldr]: https://github.com/tldr-pages/tldr
[^cheat.sh]: https://github.com/chubin/cheat.sh
[^cheat]: https://github.com/cheat/cheat
[^coreutils]: `man cp | grep coreutils` -> [Coreutils - GNU core utilities](https://www.gnu.org/software/coreutils/)
[^moreutils]: [How To Restore Or Recover Deleted Commands In Linux - OSTechNix](https://ostechnix.com/how-to-restore-or-recover-deleted-commands-in-linux/)
 -> [Moreutils - A Collection Of More Useful Unix Utilities - OSTechNix](https://ostechnix.com/moreutils-collection-useful-unix-utilities/) ->  https://joeyh.name/code/moreutils/
[^thefuck]: https://github.com/nvbn/thefuck
[^vimv]: https://github.com/thameera/vimv
[^ripgrep]: https://github.com/BurntSushi/ripgrep/
[^fzf]: https://github.com/junegunn/fzf


--EOF
