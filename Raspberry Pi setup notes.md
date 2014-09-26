2014-08-06: I learn markdown also here: https://help.github.com/articles/github-flavored-markdown

Writting style ref: https://github.com/johnantoni/beaglebone-black

Thanks all the clever people make the tools help me work remotely! High quality software, which is opensource, with well organized documentation, and supportive community!
Thanks all, I love you. I've learnt much from you.

![] (http://3.bp.blogspot.com/--paedIFRIqw/UxonE86mncI/AAAAAAAAVuk/NZC--txBtQY/s1600/raspberry_pi_education.jpg)

Purpose of Pi: (2014-08)
========
1. Help to maintace the daily operation of hobototes (e.g. When we travel around the world, we need a small-enough computer for operation.).
2. As a device to operate all-day-long with **low power consumption**. :heart_eyes: (verse the power a notebook needs)
3. Runs the hobototes-data-centric apps on it. (To free my notebook from always-turning-on. Moving django project to it.)
4. Runs as a host to share files. (BTSync, verse Dropbox)
5. Needs no maintance once after setup. Once it's broken, it is brain-less to be rebuilt the software. (0-day recovery.) (verse PC, which the storage, power suppile, display unit are easy to be broken, and making heat. PC needs to be setup again once a hardawre is replaced. Time consuming.)
6. Plug and play, **rich community support**. :heart_eyes:

![] (http://3.bp.blogspot.com/--paedIFRIqw/UxonE86mncI/AAAAAAAAVuk/NZC--txBtQY/s1600/raspberry_pi_education.jpg)

----
Raspberry Pi for hobototes.
====

### 1st stage: (2014-08-12~2014-08-14)
* The official Raspbian image with SSH, git, VNC, btsync, dropbox and other system-admin-related stuffs.
* Setup a dynamic dns. (Therefore, I can connect the web apps when I am not on the local network.)
* Make a backup of the SD card before going to the 2nd stage.

### 2nd stage: (2014-08-14~2014-08-22)
* Preparation for running [Django] (http://djangoproject.com). Upgrade [python] to version 3.4 when need.
* pip, virtualenv & virtualenvwrapper (I need to learn both of them.)
* Setup a web server (nginx), database (MySQL), Django, phpmyadmin
* Make a backup of the SD card before going to the 3rd stage.

### 3rd stage: (2014-08-22~ )
* Write the apps for the business.
    * hobototes-data-centric apps.
    * Automate business calculation.
* Wordpress for article storage.
* Doing some automation, using crontab, e.g. automate the database backup.
* Doing some experiment, such as Rails4, node.js, in spare time. :cry:

### 4th stage: (2014-09-10~)
* Speed things up
    * Overclock from 800Mhz to 900Mhz
    * Wordpress: install & test caching plugins
    * Django: caching, optimize queries, profiling with Firefox F12

----
Shortcut
====
###Service need manually start after power on

VNC server

BTSync

Django within py34-django

Mopidy

### My tools

login: je09

python3.4 alias to`py`, located in /opt/python3.4/bin/python3.4

`py34-django` is the main develop environment for hobototes-data-centric apps

nginx is started when boot up, or by `sudo service nginx start`

The default nginx document root is `/usr/share/nginx/www`. I've changed it to `/www/var`.

`mysql -uroot -ppassword`

`pip freeze` exports a list of package in my environment. `pip -r requirement.txt` to recreate the package in a new environment.

----
2014-08-06:

In the 1st boot up:

    sudo raspi-config

Expand the disk, set locale, turn on SSH, reboot.

    sudo apt-get install update && apt-get install upgrade
    dpkg

And now it's ready to be customisation. For fun! (或是被折磨)

### History
2014-08-06: Initial the system.

2014-08-09: Initial the system with a few sys admin tools setup. Preparing to be a python web server next time. Backup as an image. Learning.

2014-08-12: Install Python3.4 from source. Setup virtualenv & wirtualenvwrapper.

2014-09-13: Install Mopidy.  (One of my friends asked me about CuBox, and it's my first time to heard it on 2014-09-10.)

2014-09-10: Thinking of speed things up. (Mainly caching on Wordpress & Django.)

2014-09-16: Doing of speed things up. (Overclock to 900Mhz, cache on Django.)

### Custom software on Pi:
tightvncserver, vim-gtk, git, 

transmission, chromium, Mopidy

[htop] (https://linuxtoy.org/archives/cool-linux-tools.html), nmap, tree, p7zip, mtr, [nmon] (http://blog.jobbole.com/15430/), screen

(No Dvorak keyboard layout setup is needed, as VNC transfer my key layout to the pi. :smiley:)
(7z on linux is 7za, where the package is called p7zip [#] (http://www.thegeekstuff.com/2010/04/7z-7zip-7za-file-compression/) )

#### TODO:
*Reality is no prefect.* I intend to get everything up, then make it better.

- [f] sublime -> use Vim, or code locally commit over Git
- [ ] utorrent -> TBC
- [x] file sync between
    - [x] btsync
    - [f] Dropbox (no auto sync)-> TBC
- [x] development environment
    - [x] upgrade to python3.4
    - [x] virtualenv
    - [x] virtualenvwrapper
    - [x] Django
        - [x] test: Django runs with python3.3+
        - [x] test: MySQL as backend
    - [x] MySQL
    - [x] PHP5-fpm
        - [x] let php knows mysql
    - [x] phpmyadmin
        - [x] bind phpmyadmin to mysql
    - [ ] upgrade git
    - [x] import existing data (Word -> wordpress)
- [ ] TBC: rails
    - [ ] ruby 2.1.0+
    - [ ] rbenv / rvm
    - [ ] rails 4.1+
- [ ] internal hosting
    - [x] nginx
        - [x] let nginx serves PHP (capture comm in port 9000)
        - [x] test phpmyadmin
    - [x] wordpress 3.9
        - [ ] url rewritten in nginx
        - [ ] cache wordpress
    - [ ] django
        - [ ] cache django
    - [ ] TBC: mail server
    - [x] FTP server: vsftpd
- [ ] automation / add some jobs to cron
- [ ] TBC: hardening security
    - [x] on wordpress
    - [ ] on nginx
    - [ ] ARP protect
- [ ] setup as a home theater
    - [ ] playing movie
    - [x] playing music over network

How do I setup the Pi (a step by step record)
====

### Lookup IP
    ifconfig
    hostname -I
    curl ifconfig.me (from: http://www.commandlinefu.com/commands/browse/sort-by-votes)

ref: http://www.raspberrypi.org/documentation/troubleshooting/hardware/networking/ip-address.md

### Setup ssh
    raspi-config
    reserve a fixed ip for pi, e.g. 192.168.0.101, for always on connection
    ssh pi@192.168.0.101

ref: http://www.raspberrypi.org/documentation/remote-access/ssh/unix.md

### Screen

    sudo apt-get install screen

Here are some shortcut of screen:


    ctrl-a c：创建一个新的 Shell
    ctrl-a ctrl-a：在 Shell 间切换
    ctrl-a n：切换到下一个 Shell
    ctrl-a p：切换到上一个 Shell
    ctrl-a 0...9：同样是切换各个 Shell
    ctrl-a d：退出 Screen 会话


* [Screen：Shell 孵化器] (https://linuxtoy.org/archives/screen.html)
* [从 screen 切换到 tmux] (https://linuxtoy.org/archives/from-screen-to-tmux.html)

### Setup VNC
    sudo apt-get install tightvncserver
    tightvncserver
    vncserver :1 -geometry 1920x1080 -depth 24

    Creating default startup script /home/pi/.vnc/xstartup
    Starting applications specified in /home/pi/.vnc/xstartup
    Log file is /home/pi/.vnc/raspberrypi:1.log

On the clien side,
    vncviewer, 192.168.0.101:1

[NoIP for accessing Pi over internet. In fact, You no need to set up static IP at your Raspberry. Almost all home routers has option to bind MAC number of you network card with IP. If you do so, you'll get the same IP adress after every reboot.]

ref: http://www.raspberrypi.org/documentation/remote-access/vnc/README.md
http://computers.tutsplus.com/tutorials/take-control-of-your-raspberry-pi-using-your-mac-pc-ipad-or-phone--mac-54603

### Prepare hdd/USB drive

Format as ext4

    df -h                               # find your drive here, e.g. `sda1`
    sudo umount /dev/sda1               # replace sda1 with your drive name !
    sudo mkfs.ext4 /dev/sda1 -L BTSync  # replace sda1 with your drive name !


Mount the drive

    sudo mount /dev/sda1 /mnt/usbdrive

Edit fstab to mount the drive on startup. Add following to beginning of /etc/fstab

    sudo vim /etc/fstab
    /dev/sda1       /mnt/usbdrive   ext4    defaults          0       0


ref:
https://github.com/johnantoni/beaglebone-black/blob/master/setup/format-and-mount-usb.md
http://blog.bittorrent.com/2014/08/05/sync-stories-dual-backup-with-a-beaglebone-black-and-virtual-private-server/
http://magnatecha.com/automatically-mount-a-drive-when-linux-boots/

### Setup git
Git & python & python3 are already on the system.

### Setup GVim

    sudo apt-get install vim-gtk (or vim-gnome)

    gvim (vim can run over ssh)

#### Setup SublimeText
Considering to use Vim instead of SublimeText because of:

1. Vim can be run over SSH. :smiley:
2. SublimeText has not release an ARM version. I can run the software without source...

Maybe, I can write code on my notebook, and then "sync" the code oven git, maybe, maybe git for deployment.

http://www.sublimetext.com/
http://code.tutsplus.com/articles/from-ftp-to-git-a-deployment-story--net-25982

### Setup BTSync
    cd ~/BTSync
    ./btsync (or ./btsync --config ./sync.conf)

On the local,

    127.0.0.1:8888

However, it is more pratical to login to it over network (192.168.0.101:8888) as I can paste the sync token. :)

#### Start at boot

You may want to set btsync to start when you boot your Raspberry Pi. To do that
we will place a script in /etc/init.d/ and then register it with
update-rc.d.

    sudo nano /etc/init.d/btsync

Paste the following code in the script:

    #! /bin/sh
    # /etc/init.d/btsync
    #

    # Carry out specific functions when asked to by the system
    case "$1" in
    start)
        /home/pi/.btsync/btsync
        ;;
    stop)
        killall btsync
        ;;
    *)
        echo "Usage: /etc/init.d/btsync {start|stop}"
        exit 1
        ;;
    esac

    exit 0

Then change the permissions, test, and register it to run at boot:

    sudo chmod 755 /etc/init.d/btsync
    sudo /etc/init.d/btsync start       # test that the script starts
    sudo /etc/init.d/btsync stop        # test that the script stops
    sudo update-rc.d btsync defaults


#### Auto config

Or, I can make it to be configured to auto-run after system start up:

    sudo nano /etc/apt/sources.list.d/btsync.list

past following lines: 

    deb http://debian.yeasoft.net/btsync wheezy main contrib non-free
    deb-src http://debian.yeasoft.net/btsync wheezy main contrib non-free

Control + x to close/save the file.

    sudo apt-get update
    sudo apt-get install btsync
    Config: Default Sync instance? Yes

ref: http://raspberrypihelp.net/tutorials/46-raspberry-pi-bittorrent-sync-bitsync

ref in general: 
http://blog.bittorrent.com/2013/08/20/sync-hacks-how-to-sync-without-data-loss-using-btsync-raspberry-pi/ <-- this one useful. Place a script in /etc/init.d/ and then register it with update-rc.d.
http://blog.bittorrent.com/2014/08/05/sync-stories-dual-backup-with-a-beaglebone-black-and-virtual-private-server/ shows using BTSync with BeagleBone in a founded business.
    https://gist.github.com/johnantoni/8199088
http://blog.bittorrent.com/2013/05/23/how-i-created-my-own-personal-cloud-using-bittorrent-sync-owncloud-and-raspberry-pi/
http://reustle.io/blog/btsync-pi
http://www.instructables.com/id/Redundant-cloud-storage-with-a-friend-and-a-Raspbe/?ALLSTEPS
http://www.cyberciti.biz/open-source/30-cool-best-open-source-softwares-of-2013/

### Setup Dropbox
Dropbox doesn't provide an ARM package on Linux nor source code. Therefore, I need to find a 3rd-party solution on pi.
Google: raspberry dropbox
http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=21617

There are 2 solutions: Bash dropbox uploader or Drop2PI. I pick [Bash dropbox uploader] (http://www.andreafabrizi.it/?dropbox_uploader the uploader's author site
) as it is the most popular (a.k.a community support).

    git clone https://github.com/andreafabrizi/Dropbox-Uploader/
    $chmod +x dropbox_uploader.sh
    $./dropbox_uploader.sh

After the apps created, paste the following url to browser to activate the apps.

    https://www2.dropbox.com/1/oauth/authorize?oauth_token=dOdcCJGpKpKjHDkz

Check the [security page] (https://www.dropbox.com/account#security) to revoke the secret token in future. 

To automate the jobs of it, rather then typing commands again and again, use cron job. The setup refer to [the project on Github] (https://github.com/andreafabrizi/Dropbox-Uploader).

ref:
http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=21617
https://github.com/andreafabrizi/Dropbox-Uploader
http://raspi.tv/2013/how-to-use-dropbox-with-raspberry-pi

#### update:
Both of them help me interactive Dropbox in cli but not automate the sync. I shall find a better solution later.
Google: auto sync with dropbox raspberry

### Setup as a home theater PC (2014-09-09)
http://en.wikipedia.org/wiki/Home_theater_PC

[XBMC] (http://xbmc.org/)

* [How to Install XBMC onto the Raspberry Pi ] (https://www.youtube.com/watch?v=5XuSlsJppOo)


### Play music

    oxmplayer fx.mp3

ref: http://omxplayer.sconde.net/

As simple as possible, I ssh into Pi and then play music with oxmplayer.

see also: [将树莓派打造成音乐播放服务器] (http://www.geekfan.net/10419/)

### Raspberry Pi as CAS (audio, music) (2014-09-10)

Turn Raspberry Pi into an audiophile audio source. Audiophile-quality music playback. Firstly this idea is Kin's question: cubox CAS source
-> Google: cubox CAS source


Power supply -> Raspberry -> DAC -> Speaker

Need to use [線性電源  liner power supply] (http://www.post76.com/x2/forum.php?mod=viewthread&tid=184045&highlight=raspberry) (otherwise, 聲硬、音場窄、非常數碼欠自然): 高低伸延有良好改善、音場沒有之前咁平面同窄、增強了三維空間感、動態低頻既表現亦提升了不少

* Google: Raspberry music player -> http://www.pimusicbox.com/ is a  Headless audio player based on Mopidy (no need for a monitor), streaming music from Spotify, SoundCloud, Google Music, Podcasts (with iTunes, gPodder directories), MP3/OGG/FLAC/AAC, Webradio (with TuneIn, Dirble directories), Subsonic, Soma FM. - See more at: http://www.pimusicbox.com/#sthash.3z0vOWIV.dpuf
* Google: Raspberry CAS source -> [headfi.org] (http://www.head-fi.org/t/681593/cas-source-raspberry-pi-picoreplayer-raspyfi)
* Google: cubox CAS source -> http://obeediy.blogspot.hk/search/label/CAS

* [Make your Raspberry Pi a Hi-Fi player] (https://www.youtube.com/watch?v=JHmcwZs3ufM) (from Google: Raspberry music player )
* http://www.runeaudio.com/download/

http://www.runeaudio.com/about has a good depict on whan an linux distro on Pi does as a CAS

![] (http://www.runeaudio.com/assets/img/how-it-works.png)

Coming some new idea: 

* MPD (music player daemon)? (Google: post76 mpd, Google: post76 mpd 集中營)
* i2s (firstly seen in [Raspberry Pi i2s DAC: why this sounds so good - Volumio] (http://volumio.org/raspberry-pi-i2s-dac-sounds-so-good/))

OS:
* [RuneAudio] (http://www.runeaudio.com/)
* [volumio] (http://volumio.org/) ([is a porting of RaspyFi] (http://www.raspyfi.com/volumio-your-new-favourite-audiophile-music-player-is-out/))
    * [RaspyFi] (http://www.raspyfi.com/), which is aimed to notorious Voyage-mpd distro. See the post on headfi.org for comments. (from Google: Raspberry CAS source)
* [Pi MusicBox] (http://www.woutervanwijk.nl/pimusicbox/)
    * https://discuss.mopidy.com/t/how-to-pi-musicbox-with-a-raspberry-pi-b/25
* [Archphile] (http://archphile.org/faq) (from: Google: volumio root)
    * http://www.ympd.org/
* [piCorePlayer] (https://sites.google.com/site/picoreplayer/home) (from: [Raspberry Pi + RuneAudioで音楽を鳴らしてみる ] (http://cygx.mydns.jp/blog/?arti=515) )

OS for 64bit x86 PC:
* [Audiophile Linux] (http://www.ap-linux.com) v3, Arch Linux based, need to be installed on hdd
* [Daphile] (http://www.daphile.com/) , Debian based, run from USB flash drive as an image. The sound is the best amoung the 3.
* [Voyage-linux] (http://linux.voyage.hk) is made by a HKer. Runs an ordinary desktop linux. The sound is not as good as Audiophile Linux nor Daphile

All of them turn Raspberry Pi into a headless music player, plus turning CuBox, UDOO, Beaglebone Black too.

RuneAudio and Volumio is soso similar, sharing a similar UI. So, what's the difference and the relationship between them?
* Google: runeaudio and volumio
* Google: runeaudio vs volumio

#### Futher:

* http://www.hydrogenaud.io/forums/
* Baidu: runeaudio  -> [树莓派组建无线播放器 — 树莓派也玩hifi] (http://jy.smzdm.com/detail/30739)
* Baidu: audiophile linux -> [Audiophile Linux] (http://www.ap-linux.com)
* Baidu: audiophile raspberry
* Google: raspberry music player 
-> The image is around 227MB in (compressed) size; 950MB uncompressed
[Web Client for Mopidy Music Server and the Pi MusicBox] (https://github.com/woutervanwijk/Mopidy-MusicBox-Webclient)
* Google: raspberry music server -> http://lifehacker.com/how-to-turn-a-raspberry-pi-into-a-private-streaming-mus-1583221462
* Google: raspberry audio image -> [Model B+ Audio Experiences] (http://www.raspberrypi.org/forums/viewtopic.php?f=35&t=81942)
* Google: raspberry audio image ->  [Raspberry Pi: Mopidy on a credit card] (http://docs.mopidy.com/en/latest/installation/raspberrypi/)
* http://www.raspberrypi.org/tag/music/
* Baidu: raspyfi
* Google: audiophile Windows -> [Fidelizer] (http://www.windowsxlive.net/fidelizer/)
* http://www.head-fi.org/f/ -> search
* http://www.diyaudio.com/forums/ -> search
* Google: audiophile sound card linux
* Google: intel-based audiophile
* Google: 64bit x86 audiophile
* [HiFiBerry] (http://www.hifiberry.com/) is a DAC for Raspberry Pi
    * [Crazy Audio - Sound quality of the Raspberry Pi B+] (http://www.crazy-audio.com/2014/07/sound-quality-of-the-raspberry-pi-b/)
    * http://www.hifiberry.com/guides/setting-up-volumio-to-get-great-audio/
* Google: runeaudio root -> I wanna find a way to ssh to it. Google tell me more about this project in someones' mind.
* Google: volumio root -> runeaudio root? again, in volumio
* [Hydrogenaudio Forums - Audio Hardware > Audio quality on SBCs like RPi, Built-in analog out on single-board computers any good?] (http://www.hydrogenaud.io/forums/index.php?showtopic=106223)
* Google: runeaudio root
    * [Computer Audiophile - Geek Speak: How To Build A BeagleBone Black MPD Music Server] (http://www.computeraudiophile.com/content/533-geek-speak-how-build-beaglebone-black-mpd-music-server/comments11.html)
    * [Adafruit - Raspberry Pi] (https://learn.adafruit.com/category/raspberry-pi)
    * [FSA Pi 音樂應用平台 - [轉貼]樹莓派是什麼的東西?小小的簡單介紹，以及應用資源。] (http://fsapi.wordpress.com/2014/08/25/轉貼樹莓派是什麼的東西?小小的簡單介紹，以及/)
        * -> [[投影片] COSCUP2014：Raspberry Pi 應用展示與遊戲機演進篇] (http://www.raspberrypi.com.tw/1678/coscup2014-introduction-to-raspberry-pi-and-game-console-evolution/)
            * -> PiFi Mini (on: http://www.raspberrypi.com.tw/1678/coscup2014-introduction-to-raspberry-pi-and-game-console-evolution/)
        * -> [樹莓派在01上面應用於音樂撥放的參考文章] (http://www.mobile01.com/topicdetail.php?f=180&t=3495250&p=1)
* Google: cubox os
    * http://www.solid-run.com/archive/mw/Media_player

Music Player:
* https://amarok.kde.org/


#### Steam over network

Power supply -> Raspberry (-> steaming ) -> the device on hand -> Speaker

* http://andrewkelley.me/post/quest-build-ultimate-music-player.html, from:  [将树莓派打造成音乐播放服务器] (http://www.geekfan.net/10419/)
* http://www.crazy-audio.com/projects/raspberry-pi-for-audio-distribution/

music server :
* http://groovebasin.com/
* [MPD (music player daemon) ] (http://www.musicpd.org)

### Setup Mopidy on Pi (2014-09-14)

Google: raspberry music server -> [Mopidy] (http://www.mopidy.com/)  is the 1st link,  [Pi MusicBox] (www.woutervanwijk.nl/pimusicbox/) second.
Google: raspberry audio image ->  [Raspberry Pi: Mopidy on a credit card] (http://docs.mopidy.com/en/latest/installation/raspberrypi/)

[Mopidy] (http://www.mopidy.com/) is an extensible music server written in Python.  It can be installed on Pi, Debian, Ubuntu, Arch Linux, Mac OS.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a range of MPD and web clients.

Load the IPv6 kernel module now:

     sudo modprobe ipv6

Add ipv6 to /etc/modules to ensure the IPv6 kernel module is loaded on boot:

    echo ipv6 | sudo tee -a /etc/modules

Since I have a HDMI cable connected, but want the sound on the analog sound connector, I have to run:

    sudo amixer cset numid=3 1

to force it to use analog output. 1 means analog, 0 means auto, and is the default, while 2 means HDMI. You can test sound output independent of Mopidy by running:

    aplay /usr/share/sounds/alsa/Front_Center.wav

If you hear a voice saying “Front Center”, then your sound is working.

Add the archive’s GPG key:

    sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/mopidy.list
    
Install Mopidy and all dependencies:

    sudo apt-get update
    sudo apt-get install mopidy

Finally, you need to set a couple of [config values] (http://docs.mopidy.com/en/latest/config/), and then you’re ready to run Mopidy.

When a new release of Mopidy is out, and you can’t wait for you system to figure it out for itself, run the following to upgrade right away:

    sudo apt-get update
    sudo apt-get dist-upgrade
    
#### Configure Mopidy

Need to config Mopidy. Some modules should be turn on, such as `http`, `local` in order to use it over network.
 
A config file is created automatically when the 1st run of Mopidy. Therefore, I run it by issue a `mopidy` command, then I edit the generated configure file:

    vi ~/.config/mopidy/mopidy.conf
    
Change the hostname to the location of the pi (Mine is `192.168.0.101`), and as I put music in `~/Music`:   
    
    [http]
    enabled = true
    hostname = 192.168.0.101 # or :: for listen to all
    port = 6680
    static_dir =
    zeroconf = Mopidy HTTP server on $hostname

    [local]
    enabled = true
    library = json
    media_dir = ~/Music
    data_dir = ~/Music/mopidy/local
    playlists_dir = ~/Music/mopidy/local/playlists
    scan_timeout = 1000
    scan_flush_threshold = 1000
    excluded_file_extensions =
      .directory
      .html
      .jpeg
      .jpg
      .log
      .nfo
      .png
      .txt

Each time I change the music files in the `~/Music` folder (add, delete, etc), I need to let Mopidy know it:

    mopidy local scan # see `mopidy --help`
    
####    Running Mopidy

To start Mopidy, simply open a terminal and run:

    mopidy

For a complete reference to the Mopidy commands and their command line options, see mopidy command.

When Mopidy says MPD server running at 127.0.0.1:6600 it’s ready to accept connections by any MPD client. Check out our non-exhaustive MPD clients list to find recommended clients.

#### Stopping Mopidy

To stop Mopidy, press `CTRL+C` in the terminal where you started Mopidy.

Mopidy will also shut down properly if you send it the TERM signal, e.g. by using `pkill`:

    pkill mopidy

#### Clients for Mopidy

* [HTTP clients] (http://docs.mopidy.com/en/latest/clients/http/)
* [Web Client for Mopidy Music Server and the Pi MusicBox] (https://github.com/woutervanwijk/Mopidy-MusicBox-Webclient)
* [Moped - Web Client for Mopidy] (https://github.com/martijnboland/moped) (from: http://docs.mopidy.com/en/latest/ext/web/)
* [Mopify] (https://github.com/dirkgroenen/Mopify)
* [MPD] (http://en.wikipedia.org/wiki/Music_Player_Daemon)
* http://www.ympd.org/

See also https://www.kickstarter.com/projects/fon/gramofon-modern-cloud-jukebox, which is shown on the homepage of http://www.mopidy.com/

### Setup Python for development (enhance it) 
* Read [The Hitchhiker’s Guide to Python!] (http://docs.python-guide.org/en/latest/) first, and [Python Packaging User Guide] (https://python-packaging-user-guide.readthedocs.org/en/latest/current.html) second. (from: [How to get Django] (https://www.djangoproject.com/download/) )
[Learn Python the Hard Way] (http://learnpythonthehardway.org/book/ex46.html) (Google: virtualenv project structure) provides a rich set of reading materials too.
* [The Hitchhiker’s Guide to Python!] (http://docs.python-guide.org/en/latest/)  is also from https://github.com/kennethreitz/python-guide
* [Python Packaging User Guide] (https://python-packaging-user-guide.readthedocs.org/en/latest/current.html) is also from https://github.com/pypa/sampleproject
* http://pydanny.com/experiences-with-django-python3.html

[pip] (https://pip.pypa.io/en/latest/)

    sudo apt-get install python-pip

#### My approach to Python 3.3 & Django 1.7+

First at all. See the [Django 1.7's requirement] (https://docs.djangoproject.com/en/1.7/topics/install/), as I mainly develop the hobototes-data-centric apps on Django 1.7. (It works with Python 2.7, 3.2, 3.3)

Since the Python3 ships with Pi is version3.2, it is better to upgrade it to version 3.3 before installing Django 1.7 (currently 1.7-rc2). I have to upgrade it from source code, and put it into a new place rather than over-write the python shipped with Pi officially (To avoid system conflict.) Once it was successed, I could install Django1.7+ with virtualenv, doing test. Once the test was success, I could install MySQL and Nginx too.

A notes I bear in mind:


>    System updates break everything
>    Installing apt packages can overwrite pip-installed things
>    Version conflicts
>    Distribution upgrades are unpredictable chaos. Seriously. I've lost hair to these.


#### Upgrading Python3 (place it in a new place)
Google: django with python 3
http://askubuntu.com/questions/401132/how-can-i-install-django-for-python-3-x
http://stackoverflow.com/questions/20251562/how-to-install-django-for-python-3-3 facing the same problem of mine
https://docs.djangoproject.com/en/dev/topics/python3/


Seems I have to complie 3.3 (or 3.4) from source. Therefore,
Google: how to install python 3.3
http://askubuntu.com/questions/244544/how-do-i-install-python-3-3 shows how the others compile it from source

Google: how to install python 3.4
https://docs.python.org/3.4/using/index.html

OK, head to [Python.org] (http://www.python.org) and get the latest python.

    wget https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tar.xz
    xz -d Python-3.4.1.tar.xz
    tar -xf Python-3.4.1.tar

    cd Python-3.4.1
    ./configure
    make
    make test
    sudo make install

The build process consists in the usual, but...
    
    Warning: make install can overwrite or masquerade the python3 binary. make altinstall is therefore recommended instead of make install since it only installs exec_prefix/bin/pythonversion. 
    [#] (https://docs.python.org/3.4/using/unix.html#building-python)

OK, not `make install` but `make altinstall`, plus `--prefix` --prefix argument to the configure script. (run `./configure --help` to find out the options) [#] (http://hg.python.org/cpython/file/3.4/README)

OK. For example, I do not have any Python installations on my system and I want to install 3 versions: 2.7, 3.3 and 3.4. I want to make 2.7 the primary installation (as python) and all the others as secondary (as python3.3 and python3.4) installations. I would install the primary with:

    sudo make install

and install both the other versions with:

    sudo make altinstall

The produced programs would be python (2.7), python3.3 (3.3) and python3.4 (3.4).

OK, accroding to http://askubuntu.com/questions/244544/how-do-i-install-python-3-3,

Assump different Python versions from 2.4 to 3.2 living happily in /opt.

I need C compiler and other stuff to compile Python

    sudo apt-get install build-essential

(Update: If errors come with `mkvirtualenv --python=/opt/python3.4/bin/python3.4 test` when creating the environment, this is my fault not compiling python completely. Try `sudo apt-get install build-essential python-dev` too and build again.)

SQLite libs need to be installed in order for Python to have SQLite support.

    sudo apt-get install libsqlite3-dev
    sudo apt-get install sqlite3 # for the command-line client
    sudo apt-get install bzip2 libbz2-dev

    cd Python-3.3.0
    ./configure --prefix=/opt/python3.3
    make && sudo make install

Test if it worked:

    /opt/python3.3/bin/python3

    import sqlite3  # if sqlite3 package is installed on system

Some nice touches to install a py command by creating a symlink:

    mkdir ~/bin
    ln -s /opt/python3.3/bin/python3.3 ~/bin/py

Alternatively, you can install a bash alias named py instead:

    echo 'alias py="/opt/python3.3/bin/python3.3"' >> .bashrc

Or, my simple solution is the use of `altinstall`, accroding to the 3.4 README:

    cd Python-3.3.0
    ./configure
    make && sudo make altinstall

(It takes about 15 mins. Hogging 100% CUP.)

Test if it worked:

    python3.4

`** prefer ** :heart: `
I've tested both the methods above. I prefer the 1st one. No messy in `/usr/local`.

#### Escape
Update:

If I fail, how can I remove python3.4?

Google: how to remove python3.4
[Removing second python install - Stack Overflow] (http://stackoverflow.com/questions/16871795/removing-second-python-install)

Since I install it from source, apt-install has no idea that it exists.

The easiest way (as most makefiles don't have an uninstall target) is to run 

    make install 

again in my 3.3 source directory and capture what it sticks where and then remove them. ("make uninstall" usually don't work.)

The cheaper way would be to 

    rm /usr/local/bin/python3 

and probably anything else in /usr/local/bin/py* including symlinks to various parts of the suite.

#### Setup virtualenv
Google: raspberry pi virtualenv
[Virtualenv] (https://pypi.python.org/pypi/virtualenv) gets you some common Python tools (distribute for packaging, pip for easy installation/removal of packages & virtualenv for nice isolated environments)

    # sudo apt-get install python-dev
    # curl -O http://python-distribute.org/distribute_setup.py
    # python distribute_setup.py
    # curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
    # python get-pip.py
    sudo pip install virtualenv

Then, we can create an isolate environment:
(assume I wanna the environment "ENV" to be placed at home)

    cd ~
    virtualenv ENV
    cd ENV
    source bin/activate

ref:
http://raspberry.io/wiki/how-to-get-python-on-your-raspberrypi/
http://flask.pocoo.org/docs/installation/#virtualenv tell me why use virtualenv to isolate the development enviornment from system
http://dormousehole.readthedocs.org/en/latest 这是 Flask 0.10 版文档的中文翻译 (from: Baidu: flask)

http://www.raspberrypi.org/forums/viewtopic.php?t=7208&p=403771
https://virtualenv.pypa.io/en/latest/

#### One virtualenv is enough

    -p path/to/python/version

I could use a single virtualenv for both python version, just use the `-p path/to/python/version` or `--python=path/to/version` flag to specify which version to use for the creation of the virtual environment.

ref: http://stackoverflow.com/questions/12566064/virtualenv-with-python2-and-python3-via-homebrew/12566853#12566853

#### To disable virtualenv

Google: virtualenv disable

    deactivate

ref: 
https://www.hackerschool.com/blog/14-there-is-no-magic-virtualenv-edition
http://docs.python-guide.org/en/latest/dev/virtualenvs/
https://virtualenv.pypa.io/en/latest/

### Setup virtualenvwrapper

[virtualenvwrapper] (https://bitbucket.org/dhellmann/virtualenvwrapper) is a set of extensions to Ian Bicking's [virtualenv] (https://pypi.python.org/pypi/virtualenv) tool. The extensions include wrappers for creating and deleting virtual environments and otherwise managing your development workflow, making it easier to work on more than one project at a time without introducing conflicts in their dependencies.

    pip install virtualenvwrapper

    export WORKON_HOME=~/Envs
    mkdir -p $WORKON_HOME
    source /usr/local/bin/virtualenvwrapper.sh

    mkvirtualenv env1

In order to make the virtualenvwrapper's environment available afterward, I should write the `export` and `source` exactly showning above in my `~/.bashrc`.

Some useful commands:

    lsvirtualenv
    lssitepackages
    cdvirtualenv
    cdsitepackages

Switch between environments:

    workon env2

To deactivate is still the same:
    
    deactivate

To delete:

    rmvirtualenv env1

ref:
http://virtualenvwrapper.readthedocs.org/en/latest/
http://docs.python-guide.org/en/latest/dev/virtualenvs/

### Setup Django (with virtualenv & virtualenvwrapper)

    pip install django == 1.7

However, the version 1.7 is still in beta and not available in pip as a released package. Therefore, I need to manually setup with source code.

Use virtualenv & virtualenvwrapper to make a clean room first.

    which python3.4

No package be shown? coz my python3.4 is called `py`

    mkvirtualenv --python=/usr/bin/python3 py3-django

`**Prefer**`

    mkvirtualenv --python=/opt/python3.4/bin/python3.4 py34-django

(or virtualenv only:
    cd ~
    virtualenv py3_django
    cd py3_django
    source bin/activate

    pip install django  # change it to the version you want

    cd ~/site
)

There are 3 ways to install Django, according to [How to install Django] (https://docs.djangoproject.com/en/1.7/topics/install/).

    cd Downloads
    wget https://github.com/django/django/zipball/master    # get the latest development version
    tar xzvf Django-1.7.tar.gz
    cd Django1.7
    sudo python setup.py install

(or

    pip install https://www.djangoproject.com/download/1.7c2/tarball/
    
`**Prefer**` :heart:
If I installed Django using pip or easy_install previously, installing with `pip` or `easy_install` again will automatically take care of the old version, so you don’t need to do it myself.
)

(or

    git clone git://github.com/django/django.git django-trunk
    sudo pip install -e django-trunk/
)

Test it:

    cd ~ && mkdir sites
    django-admin.py --version
    django-admin.py startproject hobototes-data-centric
    cd hobototes-data-centric
    python manage.py runserver

Now, go to itstall MySQL. :smiley:

(Update: `django.core.exceptions.ImproperlyConfigured: Error loading MySQLdb module: No module named 'MySQLdb'`

This is caused by no mysql to python driver in my virtual environment.

Google: django virtualenv no module named mysqldb

need to install `mysql-python` if use mysql as backend, either 1 of the 5, suggested by the Stack Overflow community:

    sudo apt-get install python-mysqldb
    sudo apt-get install libmysqlclient-dev
    sudo apt-get install python-dev
    pip install mysql-python    # but `no module named 'Configparser'`, and the `ConfigParser` does not support python3
    easy_install mysql-python

:broken_heart: None of them works because I use Python3, not python 2.

:rage4:
Then, I Google: pip install mysql-python  no module named 'Configparser'

:pray:

>     pip install mysqlclient

> in my python3.4 virtualenv after

>    sudo apt-get install python-dev libmysqlclient-dev

> which is obviously specific to ubuntu/debian, but I just wanted to share my success :) 
[#] (http://stackoverflow.com/questions/14087598/python-3-3-importerror-no-module-named-configparser)

:pray:
Last resort: simply, create a new virtualenv wyth system site-packages included by using the `--system-site-package` switch [#] (http://stackoverflow.com/questions/13288013/have-mysqldb-installed-works-outside-of-virtualenv-but-inside-it-doesnt-exist)

Update 2:

If all about fails, I might try [PythonAnywhere] (https://www.pythonanywhere.com/wiki/UsingMySQL) :

    pip install --user https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-1.1.6.tar.gz

Then, update your settings.py to use the oracle django backend, "mysql.connector.django":

```python
DATABASES = {
    'default': {
        'ENGINE': 'mysql.connector.django',
         ...
```

ref:
http://stackoverflow.com/questions/15140855/python3-2-installing-mysql-python-fails-with-error-no-module-named-configparse
)


Update3:


> To install mysqldb under virtualenv, you need to be able to compile the mysql module, which means you need all the general compliation tools, the python header libraries and the mysql client ones (Under ubuntu/debian these are packages build-essential, python-dev & libmysqlclient16-dev ), at this point pip install MySQL-python should work, and from there you should be able to use mysql within django.

[#] (http://stackoverflow.com/questions/8610961/problems-with-djangomysqlvirtualenv?rq=1)


ref too:
http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html

### Setup Rails


http://computers.tutsplus.com/tutorials/how-to-install-ruby-on-rails-on-raspberry-pi--cms-21421

## Setup the backend supporting for Django

** Need Nginx to serve PhpMyAdmin and Django and Wordpress. All of them need MySQL-server too.**

Tutorial in [For your Pi!] (http://raspberrypihelp.net/tutorials) provides the instruction on setting up Nginx. http://raspberrypihelp.net/tutorials/24-raspberry-pi-webserver Nginx, MySQL, PHP5-fpm, PHPMyAdmin <- All-in-one, this one useful
** I only follow this tutorial to install Nginx, MySQL, PHP5-fpm, PHPMyAdmin ** till the middle of it.

[Installing Nginx With PHP5 (And PHP-FPM) And MySQL Support (LEMP) On Ubuntu 12.04 LTS] (http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts) generally speak how to install nginx with PHP4 (PHP-FPM) and MySQL on Ubuntu 12.04, from Google: php5-fpm, when I wanna know what is that, after reading [pi's official document] (http://www.raspberrypi.org/documentation/remote-access/web-server/README.md).

[Running (almost) anything on Nginx with uWSGI - metz.log] (http://metz.gehn.net/2013/02/running-anything-on-nginx-with-uwsgi/) tells me what is uWSGI, a technology in python equivalent to PHP-FPM in php. From Google: php-fpm in python

#### Dynamic DNS

Do port forwarding to route the incoming traffic to Pi.

* http://raspbian-france.fr/mettre-en-ligne-serveur-web-raspbian-dydns-port-forwarding/

Google: 啟用DDNS D-link

* http://changyang319.com/archives/624
* http://changyang319.pixnet.net/blog/post/32287773
* http://pitown.blogspot.hk/2013/11/routing-web-traffic-to-raspberry-pi.html (from: http://magnatecha.com/things-i-do-with-my-raspberry-pi/)
* http://portforward.com/ (from: http://www.tightvnc.com/faq.php)


### Setup Nginx

    sudo apt-get install nginx

Test it:

    sudo service nginx start

or

    /etc/init.d/nginx start

~~The nginx configuration is in `/etc/nginx/nginx.conf` which we open now:~~

Nginx use a modular configuration files. `/etc/nginx/nginx.conf` is the main configuration of Nginx, I've never touch it. Instead, I edit:

    sudo vi /etc/nginx/sites-available/default

Therefore, my custom setting will not be over-written when upgrade the nginx. :smile:

The configuration is easy to understand (you can learn more about it here: http://wiki.nginx.org/NginxFullExample and here: http://wiki.nginx.org/NginxFullExample2)


Test it:

    http://127.0.0.1

(Add a line of `<? echo phpinfo();` in  `/usr/share/nginx/www/index.php`, to see if it serves php, later in the server setup.)

Plus, prepare folders to hold the web documents:

    sudo chown -R pi:pi /var/www
    sudo chmod -R 755 /var/www
    mkdir /var/www/example.com
 [#] (http://raspberrypihelp.net/tutorials/24-raspberry-pi-webserver)

ref:
http://www.raspberrypi.org/documentation/remote-access/web-server/README.md
http://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md
http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts

http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html

Install Nginx on raspbian and replace Apache
[Raspbian France: 
Installer Nginx Raspbian, et accélérez votre serveur web Raspberry](http://raspbian-france.fr/installer-nginx-raspbian-accelerez-serveur-web-raspberry/)

#### Setup PhpMyAdmin

    sudo apt-get install phpmyadmin

in the config screen, skin both apache and lighttpd, as I use Ngnix myself.

    dbconfig-common

info about config phpmyadmin: `/usr/share/doc/phpmyadmin`, 
`dbconfig-common: writing config to /etc/dbconfig-common/phpmyadmin.conf`

#### How to bind PhpMyAdmin to Nginx / Configure nginx to serve phpMyAdmin

Google: raspberry nginx phpmyadmin

(also: Google: raspberry nginx)

I put them below as the ranking:

1. http://magnatecha.com/set-up-phpmyadmin-with-nginx/. make nginx listens to port 81 and where phpmyadmin is localed in `/usr/share/phpmyadmin`
2. http://raspberrypihelp.net/tutorials/24-raspberry-pi-webserver again.
3. http://xmodulo.com/2014/04/lightweight-web-server-raspberry-pi.html demos on nginx and lighttpd: create a sybolmic link `sudo ln -s /usr/share/phpmyadmin /var/www/phpmyadmin` to the document root and make no change on the server config
4. http://www.howtoforge.com/running-phpmyadmin-on-nginx-lemp-on-debian-squeeze-ubuntu-11.04
5. http://www.raspipress.com/2014/06/tutorial-install-wordpress-on-a-raspberry-pi-using-nginx/ has a 3 part series on installing PHP & nginx on raspberry

From #1:

    server {
        listen          81;
        server_name     localhost;
        root        /usr/share/phpmyadmin;
        index       index.php index.html index.htm;
        if (!-e $request_filename) {
            rewrite ^/(.+)$ /index.php?url=$1 last;
            break;
        }
        location ~ .php$ {
            try_files $uri =404;
            fastcgi_pass unix:/var/run/php5-fpm.sock;
            fastcgi_index index.php;
            include /etc/nginx/fastcgi_params;
        }
    }

I put the code into the `http` section, and head to `http://192.168.0.101:81`... it works!

From #2:

    sudo chown -R pi:pi /var/www
    sudo chmod -R 755 /var/www
    mkdir /var/www/example.com

This is the most useful part, and the configure is a bit complicated, which I skip.

From #3:

After Nginx up:

    server {
            listen 80;
            server_name $domain_name;
            root /var/www;
            index index.html index.htm;
            access_log /var/log/nginx/access.log;
            error_log /var/log/nginx/error.log;
    }

After installing `php5-fpm` and `php-apc`:

    server {
            listen 80;
            server_name $domain_name;
            root /var/www;
            index index.html index.htm;
            access_log /var/log/nginx/access.log;
            error_log /var/log/nginx/error.log;
     
            location ~\.php$ {
                    fastcgi_pass unix:/var/run/php5-fpm.sock;
                    fastcgi_split_path_info ^(.+\.php)(/.*)$;
                    fastcgi_index index.php;
                    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                    fastcgi_param HTTPS off;
                    try_files $uri =404;
                    include fastcgi_params;
            }
    }

##### My setting

Therefore, I decide to put PHPMyAdmin on port 81, and other pages in `/var/www` on port 8001. 

    server {
        listen          81;
        server_name     localhost;
        root        /usr/share/phpmyadmin;
        index       index.php index.html index.htm;
        if (!-e $request_filename) {
            rewrite ^/(.+)$ /index.php?url=$1 last;
            break;
        }
        location ~ .php$ {
            try_files $uri =404;
            fastcgi_pass unix:/var/run/php5-fpm.sock;
            fastcgi_index index.php;
            include /etc/nginx/fastcgi_params;
        }
    }
    server {
        listen         8001;
        server_name     localhost;
        root        /var/www/;
        index       index.php index.html index.htm;
        if (!-e $request_filename) {
            rewrite ^/(.+)$ /index.php?url=$1 last;
            break;
        }
        location ~ .php$ {
            autoindex on;
            try_files $uri =404;
            fastcgi_pass unix:/var/run/php5-fpm.sock;
            fastcgi_index index.php;
            include /etc/nginx/fastcgi_params;
        }
    }


Test the config before reload the server: [Make Sure Unix / Linux Configuration Files Are Free From Syntax Errors] (http://www.cyberciti.biz/tips/check-unix-linux-configuration-file-for-syntax-errors.html)

    sudo service nginx configtest

additional ref:
@see the supplymentory

### Setup MySQL


sudo apt-get install mysql-server

set a root password.

Test:
    mysql -uroot -ppassword

    /usr/libexec/mysqld --verbose --help 1>/dev/null

#### Setup PHP5

We can make PHP5 work in nginx through PHP-FPM (PHP-FPM (FastCGI Process Manager) is an alternative PHP FastCGI implementation with some additional features useful for sites of any size, especially busier sites) which we install as follows:

    apt-get install php5-fpm

PHP-FPM is a daemon process (with the init script /etc/init.d/php5-fpm) that runs a FastCGI server on port 9000. 

ref:
http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts



#### Setup Wordpress
http://www.raspberrypi.org/documentation/usage/wordpress/README.md

Since Nginx can be configured to read web apps in any directory (e.g. It communites with PHP via port 9000, with PHP5-fpm), I consider to place Wordpress in /var/www/ , following the convention made by Apache.

Update 1:

I've try to visit the wordpress site outside my local network. It works! However, the style & image are broken.

I should fire up the database, and edit `home_url` to the domain which the outsider see, from `192.168.0.101:8008` to the DDNS I own. It works now! (Wordpress marks my ip as `192.168.0.101` since I setup it on `192.168.0.101`.)

Update 2:

I've try to upload an image in a post, an error occurs: `permission error`. This's a problem on linux folder permission. `777` is the last resort coz it make the folder "open to all people"; `755` seems DOES NOT WORK unluckily in this situation.

Best practice is to keep permissions as tight as possible. Using 777 for testing is legitimate IMO, but there should be no need to leave permissions that loose in production. Hmm, what should I set it to?


Google: correct chmod setting for wordpress on linux

* http://premium.wpmudev.org/forums/topic/correct-chmod-settings-for-install-and-run-of-wordpress
* http://stackoverflow.com/questions/18352682/correct-file-permissions-for-wordpress
* http://codex.wordpress.org/Changing_File_Permissions


Google: wordpress cannot upload image folder permission


> This error happens when PHP (WordPress) can't write to the file. This is caused by not having write permissions (the username or group that PHP (WordPress) is running under doesn't have permission to write to the file)

> Some server environments require you to use 777 permissions for PHP to have write access. This is not secure in a shared hosting environment. 

[#] (http://wordpress.stackexchange.com/questions/1430/cant-upload-images-due-to-permissions-error)

Hmm, then it is better to find out ** who ** need the permission to write the file. :smile:


> Assign 766 recursive permissions to wp-contents folder which will resolve the case...
[#] (http://wordpress.org/support/topic/image-upload-results-in-insufficient-permissions?replies=8)

I know, but giving `read & write` permisson is not secure, though.


> IMO it would be better to keep the permissions as 755 and give ownership to the webserver account (www-data). It probably doesn't make significant difference in the grand scheme of things but best practice is to keep permissions as tight as possible. Using 777 for testing is legitimate IMO, but there should be no need to leave permissions that loose in production. Root owned directories with 777 should have the same impact on WordPress as those dirs having 755 and owned by www-data. (FYI the 3 numbers refer to owner, group, others - 7 means read/write/execute; 5 means read/execute).

> So personally I would do this:

>    chown -R www-data:www-data /var/www/wordpress/wp-content/uploads 
>    chmod -R 755 /var/www/wordpress/wp-content/uploads 

[#] (http://www.turnkeylinux.org/forum/support/20130531/cannot-upload-wordpress-media-library-wordpress-appliance#comment-16821)

I like that! But I've never heard `www-data`. Who is that?

> The "user" running your webserver (sometimes _www, sometimes www-data, sometimes "nobody") lacks the permissions to edit these files. You can either change them to be owned by that user or change them to 777. To find out what your web server user is, assuming you're running apache, run ps aux | grep httpd in the command line and in the leftmost column, see what user it's showing!
[#] (http://wordpress.stackexchange.com/questions/40478/permission-of-775-not-enough?answertab=votes#tab-top)

#### My Setting

OK, so...I've to a test myself. This is a problem combine of "who is the owner" of the uploaded image & what is "the least permission", so I've to check it out...

    cd /var/www && ls -l

The owner:group is `pi:pi`, with `777` (p.s.I've set to `777` 4hr before.). Then I try to change them to `755`:

    chmod -R 777 wordpress

Oops...

    chmod: 正在更改 ‘wordpress/wp-content/uploads’ 的權限: 此項操作並不被允許
    chmod: 正在更改 ‘wordpress/wp-content/uploads/2014’ 的權限: 此項操作並不被允許
    chmod: 正在更改 ‘wordpress/wp-content/uploads/2014/08’ 的權限: 此項操作並不被允許
    chmod: 正在更改 ‘wordpress/wp-content/uploads/2014/08/cover1-500x270.jpg’ 的權限: 此項操作並不被允許

I cannot make a change, coz I am not the owner of them! (Remember that I've upload an image 4hr before successfully, **afterward** I'd change the whole `wordpress/` to 777 with `sudo chmod +R 777 wordpress`. That is, I open the  `wp-content/` folder to all the public, and then ** someone ** put the image into it.) Now, I am going to see who is he!

    cd wordpress/wp-content && ls -l

    -rwxrwxrwx 1 pi       pi         28  1月  9  2012 index.php
    drwxrwxrwx 3 pi       pi       4096  8月 16 01:55 plugins
    drwxrwxrwx 5 pi       pi       4096  8月 15 12:05 themes
    drwxrwxrwx 3 www-data www-data 4096  8月 15 19:09 uploads

Aha! The folder & image in `uploads` is created by Wordpress. It is owned by `www-data:www-data`. This is what [Jeremy claimed] (http://www.turnkeylinux.org/forum/support/20130531/cannot-upload-wordpress-media-library-wordpress-appliance#comment-16821).

連安裝個 wordpress 也很長知識。原來有種 owner 叫 www-data。開 777 就沒安全保護；設成 755就無法上傳圖片，因為 owner 不是我本人。所以我要先找出誰會是 owner，再把 folder 設定成屬於他的，才設成 他的 755。

    chown -R www-data:www-data /var/www/wordpress/wp-content/uploads 
    chmod -R 755 /var/www/wordpress/wp-content/uploads 

I fix it!

#### Wordpress and Nginx

Google: enable permalink in wordpress nginx

http://codex.wordpress.org/Nginx
http://nginxlibrary.com/wordpress-permalinks/


### FTP Server

2014-08-30:
I need a FTP server on Pi too, because I want to install Wordpress plugins in an easy way.

Google: raspberry pi ftp server
Google: ubuntu ftp server

    sudo apt-get install vsftpd

Then change the ownership of `/var/www` (I've already this when setting up Nginx.):

    sudo chown -R pi /var/www

Configure the server:

    sudo nano /etc/vsftpd.conf

Search through the file and change the following lines:

    anonymous_enable=YES Change To anonymous_enable=NO
    #local_enable=YES Change To local_enable=YES
    #write_enable=YES Change To write_enable=YES

Also, add a line to the bottom of the file:

    force_dot_files=YES

after edit the configuration, restart the service:

    sudo /etc/init.d/vsftpd restart

The host is `127.0.0.1`, where the anonymous FTP user name and password are `ftp:ftp` [#] (http://vsftpd.beasts.org/vsftpd_conf.html). The user  name and password is the existing user, such as `pi`:

    127.0.0.1
    pi
    je09

https://help.ubuntu.com/10.04/serverguide/ftp-server.html
http://computers.tutsplus.com/tutorials/how-to-use-a-raspberry-pi-as-a-local-web-server--cms-19943
http://www.instructables.com/id/Raspberry-Pi-Web-Server/step9/Install-an-FTP-server/
http://b.nj007.com/post/403.html

###Backup

Backup: Just like you can load saving data while playing RPG game.

#### Clean up
* [给 Linux 系统“减肥”] (http://www.ibm.com/developerworks/cn/linux/1310_caoyq_linuxdelete/index.html)
* [给 Linux 系统“减肥”] (http://blog.jobbole.com/49497/)

#### Backup disk image

![] (http://3.bp.blogspot.com/-s0MifSBzgnE/UxoneY_GbJI/AAAAAAAAVu0/2qCetZ7GteM/s1600/backup-raspberry-pi-os.png)

    sudo dd bs=4M if=/dev/sdb of=raspbian.img (or dcfldd)
    dd if=/path/to/image of=/dev/sdb

ref: Google: raspberry backup
http://raspberrypi.stackexchange.com/questions/311/how-do-i-backup-my-raspberry-pi

or combian use of bzip to compress the image!

    dd if=/dev/sdx | gzip > /path/to/image.gz
    gzip -dc /path/to/image.gz | dd of=/dev/sdx 

or dump the SD card, and pipe it with ssh:

    dd bs=1M if=/dev/mmcblk0 | ssh user@host 'dd of=/remote/path/to/sdcard.img'
with compression:

    dd bs=1M if=/dev/mmcblk0 | ssh user@host 'gzip -9 > /remote/path/to/sdcard.img.gz'

** Prefer **
My actual command:

    df -h
    umount /dev/sdc1
    umount /dev/sdc2
    sudo dcfldd bs=4M if=/dev/sdc | bzip2 -8 > '/media/Windows7_OS/Raspberry Pi System Backup (2014-08-xx)/Raspberry Pi - system.img-201408xx.bz2'


ref: 
http://www.raspberrypi.org/forums/viewtopic.php?p=118519
http://pitown.blogspot.hk/2013/11/backing-up-raspberry-pis-operating.html (from: http://magnatecha.com/things-i-do-with-my-raspberry-pi/)

#### Backup files daily
Google: linux backup to dropbox

http://www.cyberciti.biz/open-source/30-cool-best-open-source-softwares-of-2013/

#### Backup the code I write

As I've decided to write code on my nb (not write over ssh) and then deploy it to pi, I decide to use Git & Github to deploy and backup my code. (Consider once my nb is dead, I still have 2 copies of my code.)

#### Backup MySQL database

http://www.commandlinefu.com/commands/tagged/749/mysqldump
https://github.com/johnantoni/AutoMySQLBackup

Then BTSync to the `@backup` directory of my project folder.

#### Restore a MySQL backup
Google: how to restore mysqldump

http://www.thegeekstuff.com/2008/09/backup-and-restore-mysql-database-using-mysqldump/ 
http://xmodulo.com/2012/10/how-to-backup-mysql-server.html

#### Backup MySQL Database

http://sourceforge.net/projects/automysqlbackup/

ref: 
https://linuxtoy.org/archives/automysqlbackup.html

### Hardening Security
* http://codex.wordpress.org/Hardening_WordPress#File_permissions (Google: how to set chmod with wordpress on linux ->  http://premium.wpmudev.org/forums/topic/correct-chmod-settings-for-install-and-run-of-wordpress) is a good direction on web apps security.
* [如何保证Linux服务器的安全] (http://blog.jobbole.com/48195/)
* [通过Backtrack Linux 来加强你的安全防御] (http://www.geekfan.net/1512/)

### Mail server
Google: raspberry mail server

* http://www.raspberrypi.org/forums/viewtopic.php?f=36&t=12156

### Supplymentory

See [how Debian says about Raspberry Pi] (https://wiki.debian.org/RaspberryPi) (from: http://www.geekfan.net/10419/)

[Internet of Things Remote Sensing] (http://www.udoo.org/ProjectsAndTutorials/internet-of-things-remote-sensing/)

#### Linux system monitoring / Admin
* http://www.cyberciti.biz/tips/top-linux-monitoring-tools.html

#### Reading .gz doc on the fly

Google: how to read .gz doc in linux on the fly

As I facing a problem reading the .gz doc in `/usr/share/doc/nginx`, when I config ngnix today.

* http://www.cyberciti.biz/tips/decompress-and-expand-text-files.html

#### 編譯 Raspberry Pi 的核心

[[進階] 編譯 Raspberry Pi 的核心] (http://www.raspberrypi.com.tw/tutorial/advanced/)

#### Use a RAM disk

    mount -t tmpfs tmpfs /mnt -o size=1024m

Mount a temporary ram partition

Makes a partition in ram which is useful if you need a temporary working space as read/write access is fast.

Be aware that anything saved in this partition will be gone after your computer is turned off.


* http://www.commandlinefu.com/commands/view/224/mount-a-temporary-ram-partition (http://www.commandlinefu.com/commands/browse/sort-by-votes)

#### Learn to configure nginx better

* http://www.cyberciti.biz/tips/linux-unix-bsd-nginx-webserver-security.html
* http://wiki.nginx.org/Pitfalls
* http://wiki.nginx.org/QuickStart
* http://wiki.nginx.org/Configuration

#### Text browser
http://www.geekfan.net/9045/

#### Turn off display

To turn off the display using the Linux command line, open a terminal and enter:

    xset dpms force standby

I also like to lock my screen before hand (in GNOME):

    gnome-screensaver-command -l && xset dpms force standby

ref: 
http://magnatecha.com/turn-off-display-from-linux-command-line/

#### Backup email with Getmail
* http://magnatecha.com/back-up-email-with-getmail/

#### Better system design with Django

https://django-book.readthedocs.org/en/latest/# (from: http://www.meetup.com/Taipei-py/messages/boards/thread/34933702)

Everday Django Resources:
* RealPython
* https://code.djangoproject.com/wiki/DjangoResources (from: Google: django ui framework)

Django bulid a blog
* [Building a Blog with Django 1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)
* [Building a Blog in 30 minutes with Django] (https://www.youtube.com/watch?v=srHZoj3ASmk)

Blog example
http://arunrocks.com/recreating-the-building-a-blog-in-django-screencast/
https://www.youtube.com/watch?v=7rgph8en0Jc
https://github.com/django/djangoproject.com/tree/master/blog

* http://www.tangowithdjango.com/book/index.html
* https://django-book.readthedocs.org/en/latest/# (from: http://www.meetup.com/Taipei-py/messages/boards/thread/34933702)
* http://www.barrymorrison.com/2012/10/zero-to-django-in-4-months-what-ive-learned-part-1/


South & Migration in Django 1.7
Google: should I use south in django 1.7
https://realpython.com/blog/python/django-migrations-a-primer/
http://treyhunner.com/2014/03/migrating-to-django-1-dot-7/

to reset the migration, run `zero`with migrate

    ./manage.py migrate <app name> zero

Pre-popular database
Google: django fixture | django initial database
* https://docs.djangoproject.com/en/dev/howto/initial-data/
* https://code.djangoproject.com/wiki/Fixtures

Data can be dumpped or loaded as XML, JSON or YAML (PyYaml is need):

    pip install pyyaml

    ./manage.py dumpdata --format=yaml

See also: https://github.com/alex/django-fixture-generator

inner function
* https://realpython.com/blog/python/inner-functions-what-are-they-good-for/

Project layout
* http://woodpecker.org.cn/
* Two Scoops of Django
* http://lightbird.net/dbe/

Database
* http://postgresql.wisdomfish.org/er-model-tips/db-design-principle

Workflow in Django

> Managing state and transitions, aka workflow.

* https://github.com/kmmbvnr/django-viewflow
* https://gist.github.com/Nagyman/9502133 says workflow is a FSM (aka Finite State Machine).
* https://www.ruby-toolbox.com/categories/state_machines

Frontend
Django Template
* http://www.slideshare.net/cosecant/best-practices-for-frontend-django-developers?related=1

### Django Admin interface
Google: django admin 2
https://github.com/pydanny/django-admin2 (from: https://code.djangoproject.com/wiki/AdminNext)


Google: django admin demo
django-suit
http://djangosuit.com/

Google: django admin theme
https://www.djangopackages.com/grids/g/admin-styling/
http://grappelliproject.com/
https://github.com/sehmaschine/django-grappelli

### Django frontend
Google: django bootstrap
https://riccardo.forina.me/bootstrap-your-django-admin-in-3-minutes/

Google: django Boilerplate 

Restful

* http://code.tutsplus.com/tutorials/beginners-guide-to-the-django-rest-framework--cms-19786
  * https://github.com/commadelimited/beginners-guide-to-django-rest-framework/blob/master/article.md

Deploy Django with uWSGI & Nginx
* [使用vps部署django:uwsgi+nginx] (https://github.com/imelucifer/MyNote/blob/master/django/django%2Buwsgi%2Bnginx%2Bcentos%E9%83%A8%E7%BD%B2.md)

Plotting Graph
* http://www.playpcesor.com/2014/08/excel-google-sheets-patterns.html

### Speed up Django
2014-09-17: 
My django apps respond slowly. The user experence is [bad] (http://ihower.tw/rails4/performance.html).

I use Firefox 34 `F12` to test the page loading time. On my development notebook , `/admin/product/topic/28`, which relates to 19 product sources (and the 1600+ related sources), consumes 5.2s~5.6s to render. The most expensive part is the html files. It takes 1535.22KB, and the files totally are 1676.17KB (1 html, 8 js, 3 css, 6 images). Comparing to the other pages, which the most expensive part is the js files.

![] (./without-cache.png)

There are ways to speed it up:

1. overclock the Pi
2. optimize the code
3. optimize the database
4. caching (cache the view/page, or cache the ORM/database object)

Tools for benchmark website performance: http://webwait.com/ED

Tools for profiling django see Django Documentation: profiling | performance |optimization

For 1:

    sudo raspi-config

For 2:

Reduce the times of queries, or group many queries into one. ([Queries in Django is lazy] (https://docs.djangoproject.com/en/dev/topics/db/queries/#querysets-are-lazy) (from: [Database access optimization] (https://docs.djangoproject.com/en/dev/topics/db/optimization/) ) )

Redesign the relation between models help a lot. But the labourhood is not worthy.

For 3:

@see Replace MySQL with MariaDB. Or to reduce the SQL queries. Or to ensure there is index on table. Compicated relations do hurt.

For 4:  

Github: [django cache] (https://github.com/search?utf8=%E2%9C%93&q=django+cache) -> [johnny-cache] (https://github.com/jmoiron/johnny-cache) -> http://memcached.org/
Google: django cache -> [Django Documentation - Django’s cache framework] (https://docs.djangoproject.com/en/dev/topics/cache/)

The workflow is firstly setup the cache, and then use caching to cache the entire site:

> setup memcache |  LocMemCache ->  change MiddelWare setting -> testing (profiling)

#### Using Memcache as cache

I wanna use memcache for Django, as once I set it up, I can use it with WordPress too. :smile:

Firstly, I've to install memcache on Pi: 

* Google: ubuntu memcached
    * [How To Install and Use Memcache on Ubuntu 14.04] (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-memcache-on-ubuntu-14-04) (2014-05-01 published)
* Google: memcached django
    * [Django Memcached: Optimizing Django Through Caching] (http://www.jeffknupp.com/blog/2012/02/24/django-memcached-optimizing-django-through-caching/)

    sudo apt-get install memcached

    sudo service memcached status

After installing Memcached itself, you'll need to install a memcached binding (aka [memcache clients] (https://code.google.com/p/memcached/wiki/Clients). There are several python memcached bindings available; the two most common are [python-memcached] (ftp://ftp.tummy.com/pub/python-memcached/) and [pylibmc] (http://sendapatch.se/projects/pylibmc/). [#] (http://stackoverflow.com/questions/7636108/installing-memcached-for-a-django-project) [#] (https://docs.djangoproject.com/en/dev/topics/cache/)

* Google: ubuntu mancaced python
    * [Installing memcached for a django project] (http://stackoverflow.com/questions/7636108/installing-memcached-for-a-django-project)
        * http://ilian.i-n-i.org/caching-websites-with-django-and-memcached/
    * [how to install libmemcached for django framework in ubuntu 10.04] (http://stackoverflow.com/questions/14332451/how-to-install-libmemcached-for-django-framework-in-ubuntu-10-04)


    pip install python-memcached  # or  sudo apt-get install python-memcache

I've got an error message in browser. Since `python-memcached` does not support python3, I have to install `python3-memcached`. (Google: memcached python3)

    pip install python3-memcached

Memcache works now.
However, niether Django's built-in Local-memory caching nor memcached caches the query objects in the admin section, I am going to find another way to solve my problem.

After memcache runs successfully, the page loading time of `/admin/product/topic/28/` does not change much: from 5.5s to 5.0+s
-> Google: does django cache admin

#### Using Redis as cache

As the memcached does not cache admin query (e.g. `admin/product/topic/28/`, which takes 5.52s to render. After turn memcache on, it still take 5.4s to load that page in the 2nd+ load), I have to find another solution. (As well as johnny-cache does not support python3.)

[DjangoPackages: caching] (https://www.djangopackages.com/grids/g/caching/)

[django-cacheops] (https://www.djangopackages.com/packages/p/cacheops/) seems good. It support Python 3, Django 1.7, and It uses redis as backend for ORM cache and redis or filesystem for simple time-invalidated one. I am going to install [redis] (http://redis.io/) server on my machine:

    sudo apt-get install redis-server # as apt-get itstall redis returns no package...

    sudo service redis-service

(The redis-server installed is v2.4, not the latest v2.8.3. The requirement of django-cacheops is v2.6+. Therefore, I am going to install it from source. :smile:

Ref to http://redis.io/topics/quickstart, 

    wget http://download.redis.io/redis-stable.tar.gz
    tar xvzf redis-stable.tar.gz
    cd redis-stable
    make

At this point you can try if your build works correctly by typing `make test`, but this is an optional step. Then `make install` if everything ok.

    make install

This takes about 15 mins on Pi.

Or, if `make install` does not work, go to `./utils` and the run the  `install_server.sh` (ref: the `README` of the downloaded `redis-stable` directory):

    cd utils
    ./install_service.sh

(2014-09-26 update: I've found a way to install the latest redis automaticlly.

How to install the latest version of redis on Ubuntu?

Google: redis install wordpress  -> [Toby's Rambling - How to install the latest version of redis on Ubuntu] (http://tosbourn.com/install-latest-version-redis-ubuntu/): 

    $ sudo apt-get install -y python-software-properties
    $ sudo add-apt-repository -y ppa:rwky/redis
    $ sudo apt-get update
    $ sudo apt-get install -y redis-server

Line 1 – So we want to add a new repository that contains the latest version of Redis, the easiest way to do this requires add-apt-repository, which most likely isn’t installed on your machine, so the first thing we want to do is install python-software-properties, this gives us access to add-apt-repository.

Line 2- Next we want to set up this new repository.

Line 3 – Now we want to update apt so it sees any changes we have made.

Line 4 – Finally we want to install redis-server, now the latest version will be installed.

If you are wondering the -y flag just saves me having to manually OK things I was going to OK anyways, this is really handy if you are running these steps as part of a provisioning step (which I was)
)

Let's use redis in Django. Firstly, I turn the 3 caching middleware off, and the `CACHES = {}` block off too, in the  `setting.py`:

    # 'django.middleware.cache.UpdateCacheMiddleware',
    # 'django.middleware.common.CommonMiddleware',
    # 'django.middleware.cache.FetchFromCacheMiddleware',

    pip install django-cacheops

Add `cacheops` to your `INSTALLED_APPS` before any apps that use it.

Setup redis connection and enable caching for desired models:

    CACHEOPS_REDIS = {
        'host': 'localhost', # redis-server is on same machine
        'port': 6379,        # default redis port
        'db': 1,             # SELECT non-default redis database
                             # using separate redis db or redis instance
                             # is highly recommended
        'socket_timeout': 3,
    }

    CACHEOPS = {
        # Automatically cache any User.objects.get() calls for 15 minutes
        # This includes request.user or post.author access,
        # where Post.author is a foreign key to auth.User
        'auth.user': ('get', 60*15),

        # Automatically cache all gets, queryset fetches and counts
        # to other django.contrib.auth models for an hour
        'auth.*': ('all', 60*60),

        # Enable manual caching on all news models with default timeout of an hour
        # Use News.objects.cache().get(...)
        #  or Tags.objects.filter(...).order_by(...).cache()
        # to cache particular ORM request.
        # Invalidation is still automatic
        'news.*': ('just_enable', 60*60),

        # Automatically cache count requests for all other models for 15 min
        '*.*': ('count', 60*15),
    }

Additionally, you can tell cacheops to degrade gracefully on redis fail with:

    CACHEOPS_DEGRADE_ON_FAILURE = True

There is also a possibility to make all cacheops methods and decorators no-op, e.g. for testing:

    CACHEOPS_FAKE = True

[#] (https://github.com/Suor/django-cacheops#readme)


Finally, I let cacheops to cache all the things, including admin, queries:

    '*.*': ('all', 60*15),

Now, the page loading of `/admin/product/topic/28/` is 3.73s, decreased from 5.5s. The improvement is great!

#### Some tricks on performance

Persistent connection helps! (aka connection pool)

    CONN_MAX_AGE = None

 [Django Documentation: Database] (https://docs.djangoproject.com/en/dev/ref/databases/) -> [setting: CONN_MAX_AGE] (https://docs.djangoproject.com/en/dev/ref/settings/#std:setting-CONN_MAX_AGE)

Turn on persistent connection helps to save 0.5s (with no caching on). Page load is from 5.5s to 5.08s.

(see also the connection pools in django-redis: http://niwibe.github.io/django-redis/)

N+1 queries hurts.

When I turn off the related field `related` in the Source model, the page load time of `/admin/product/topic/28/` drops much! The page loading drops from 5.5s to 0.69s!

Ref:

Google: Rails cache, django cache
* [Caching with Rails: An overview] (http://guides.rubyonrails.org/caching_with_rails.html)
* [Ruby on Rails 實戰聖經使用 Rails 4.1 及 Ruby 2.1 - 快取] (http://ihower.tw/rails4/caching.html)
    * [如何使用 memcached 做快取] (http://ihower.tw/blog/archives/1768)
* [Django Documentation - Django’s cache framework] (https://docs.djangoproject.com/en/dev/topics/cache/)
* [The Django Book - Chapter 15: Caching] (http://www.djangobook.com/en/2.0/chapter15.html)
* Django Documentation: cache | profiling | performance | optimization


### Wordpress cache

http://haydenjames.io/best-wordpress-cache-plugin-wp-ffpc/ (Google: raspberry mariadb -> http://haydenjames.io/download-lemp-raspberry-pi-nginx-mariadb-mysql-php/)

If memcache is supporting PHP, there should be a `memcache` section in `<? echo phpinfo();`.

#### Cache Wordpress with redis

Google: redis install wordpress

### Replace MySQL with MariaDB

2014-09-10:
My django apps respond slowly. I turn on htop & nmon to see what's happen then. There are 6 or more mysqld processes running at the same time! OMG! That's the reason why the Pi respond slowly as it has 1 core. Now, I am thinking of replacing MySQL. (2014-09-17 update: I should use profiling tools to check the performance of it, rather than 'feel' it. :P)

Google: raspberry mariadb
* http://haydenjames.io/download-lemp-raspberry-pi-nginx-mariadb-mysql-php/
    * http://haydenjames.io/mysql-query-cache-size-performance/
* http://www.homecomputerlab.com/nginx-php-mariadb-wordpress-on-archlinux-on-a-raspberry-pi
* http://raspbian-france.fr/installer-mariadb-raspbian/
* http://blog.pi3g.com/2014/07/easy-mariadb-installation/

There is no MariaDB package on Pi's repositiory. I have to [compile by myself] (http://raspbian-france.fr/installer-mariadb-raspbian/). Luckily, pi3g makes one: [Easy MariaDB installation | pi3g Blog] (http://blog.pi3g.com/2014/07/easy-mariadb-installation/)

However, I am not eazy to go with new MariaDB before try to tune the performance of the existing MySQL firstly.
HayDen james writes an interesting article [MySQL Query Cache Size and Performance] (http://haydenjames.io/mysql-query-cache-size-performance/) and I am trying to figure it out now.

### Git
* [软件版本控制介绍] (http://blog.jobbole.com/55304/)
* [15分钟学会使用Git和远程代码库] (http://blog.jobbole.com/53573/)
* [让你的Git水平更上一层楼的10个小贴士] (http://blog.jobbole.com/75348/)
* https://www.atlassian.com/git/
* [沉浸式学 Git] (http://igit.linuxtoy.org/)
    * https://github.com/xuxiaodong/gitimmersion
    * http://gitimmersion.com/
* http://githowto.com/tagging_versions
* https://help.github.com/articles/github-flow-in-the-browser
* http://ihower.tw/git/
    * http://git-scm.com
    * http://gitref.org
    * http://gitimmersion.com
    * http://www.gitready.com/
    * http://gitcasts.com/
    * http://progit.org/
    * http://help.github.com
* http://blog.eddie.com.tw/slides/
  * https://speakerdeck.com/eddie/git-and-github
* http://blog.gogojimmy.net/2012/02/29/git-scenario/
* http://gogojimmy.net/2012/01/17/how-to-use-git-1-git-basic/
* https://github.com/johnantoni/git-notes
* https://github.com/mhagger/git-imerge
* [专为设计师而写的GitHub快速入门教程] (http://www.ui.cn/project.php?id=20957)
* [Git教程 - 廖雪峰的官方网站] (http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)
* http://it-ebooks.info/tag/git/
* http://computers.tutsplus.com/articles/chris-coyier-on-life-work-and-eighteen-years-as-a-mac-user--mac-3566
* http://code.tutsplus.com/articles/what-are-you-using--net-32373?utm_source=Tuts+&utm_medium=website&utm_campaign=relatedtutorials&utm_content=sidebar&WT.mc_id=Tuts+_website_relatedtutorials_sidebar
* http://computers.tutsplus.com/articles/piers-ridyard-on-the-development-and-success-of-the-nifty-minidrive--mac-54952
* http://demo.tc/Post/702
* http://blog.jobbole.com/25808/
* [Git & Excel] (http://blog.jobbole.com/67393/)

The [alias] (http://blog.jobbole.com/53573/) I use:

    git config --global alias.c 'commit -m'
    git config --global alias.co 'checkout'
    git config --global alias.cob 'checkout -b'
    git config --global alias.br 'branch'
    git config --global alias.m 'merge'
    git config --global alias.a 'add .'
    git config --global alias.s 'status'
    git config --global alias.dbr 'branch -d'
    git config --global alias.l 'log'
    git config --global alias.lol 'log --oneline'
    git config --global alias.lg 'log --graph'
    git config --global alias.lago 'log --all --graph --oneline'

http://igit.linuxtoy.org/aliases.html shows more.

    git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
    git config --global alias.hist  'log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short'

I put the [hist] (http://githowto.com/aliases) alias too. The correct version is in [Git immerse] (http://igit.linuxtoy.org/history.html)

Or, I write them into the `.gitconfig` in `$HOME`:

    [alias]
      co = checkout
      ci = commit
      st = status
      br = branch
      hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
      type = cat-file -t
      dump = cat-file -p

#### Update: 2014-09-03

Now, I have a local branch `product` on my notebook, and I have push it to github. I get only the `master` branch on my Pi whatever I `git pull` or I delete the whole project folder and then `git clone` it from github again.

Now, how can I get the latest updated branch `product` on my Pi?
from: [Git How to: Remote Branch] (http://githowto.com/remote_branches) , Google: git get all the branch from remote

[Git branch - How to clone remote branch with Git?] (http://stackoverflow.com/questions/67699/how-to-clone-all-remote-branches-with-git) shows some hints:

First, clone a remote Git repository and cd into it:

    $ git clone git://example.com/myproject
    $ cd myproject

Next, look at the local branches in your repository:

    $ git branch
    * master

But there are other branches hiding in your repository! You can see these using the -a flag:

    $ git branch -a
    * master
      remotes/origin/HEAD
      remotes/origin/master
      remotes/origin/v1.0-stable
      remotes/origin/experimental

If you just want to take a quick peek at an upstream branch, you can check it out directly:

    $ git checkout origin/experimental

But if you want to work on that branch, you'll need to create a local tracking branch:

    $ git checkout -b experimental origin/experimental

and you will see

    Branch experimental set up to track remote branch experimental from origin.
    Switched to a new branch 'experimental'

#### Linux admin tips & networking
* http://blog.jobbole.com/50643/ 如何利用多核CPU来加速你的Linux命令
* http://blog.jobbole.com/75142/ 怎么制定一套合适的服务器命名方案

#### Javascript
* http://blog.jobbole.com/74818/ 
    * http://www.codecademy.com/en/tracks/javascript

#### Possible other IDE / Text editor
* Sublime Text
* PyCharm
* Intellij IDEA

#### Possible CRM / CMS
Google: opensource crm award (idea from: http://www.sugarcrm.com/about/awards-recognition)
Google: opensource cms award

### Raspberry Pi as NAS
* http://www.howtogeek.com/139433/how-to-turn-a-raspberry-pi-into-a-low-power-network-storage-device/
* http://www.geekfan.net/2767/
* http://www.geekfan.net/5003/

### Set Fonts
Do it on client side, as I seldom login to pi with keyboard and mouse but remote control it with ssh.

Google: linux install font

一般在 Debian 系列的 Linux 中，如果要安裝字型，可將字型檔放在 /usr/share/fonts 或 ~/.fonts 目錄中，然後執行：

    fc-cache -fv

這樣就可以使用新安裝的字型了。[#] (http://www.gtwang.org/2014/02/monospaced-font-for-programmers.html)

#### Source Code Pro
Google: Source code pro
http://blog.typekit.com/2012/09/24/source-code-pro/
https://github.com/adobe-fonts/source-code-pro
http://sourceforge.net/projects/sourcecodepro.adobe/


http://www.playpcesor.com/2014/07/source-han-sans-cht-adobe-google.html
http://blog.typekit.com/alternate/source-han-sans-cht/
http://www.playpcesor.com/2014/07/google-chrome-font.html

#### Fonts:
http://sourceforge.net/adobe/source-han-sans/
http://github.com/adobe-fonts/source-han-sans/
http://www.google.com/get/noto/#/family/noto-sans-hant

// Last update: 2014-09