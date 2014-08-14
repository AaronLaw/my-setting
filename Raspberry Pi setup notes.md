2014-08-06: I learn markdown also here: https://help.github.com/articles/github-flavored-markdown

Writting style ref: https://github.com/johnantoni/beaglebone-black

Purpose of Pi: (2014-08)
========
1. Help to maintace the daily operation of hobototes (e.g. When we travel around the world, we need a small-enough computer for operation.).
2. As a device to operate all-day-long with **low power consumption**. :heart_eyes: (verse the power a notebook needs)
3. Runs the hobototes-data-centric apps on it. (To free my notebook from always-turning-on. Moving django project to it.)
4. Runs as a host to share files. (BTSync, verse Dropbox)
5. Needs no maintance once after setup. Once it's broken, it is brain-less to be rebuilt the software. (0-day recovery.) (verse PC, which the storage, power suppile, display unit are easy to be broken, and making heat. PC needs to be setup again once a hardawre is replaced. Time consuming.)
6. Plug and play, **rich community support**. :heart_eyes:


----
Raspberry Pi for hobototes.
====

### 1st stage:
* The official Raspbian image with SSH, git, VNC, btsync, dropbox and other system-admin-related stuffs.
* Setup a dynamic dns. (Therefore, I can connect the web apps when I am not on the local network.)
* Make a backup of the SD card before going to the 2nd stage.

### 2nd stage:
* Preparation for running [Django] (http://djangoproject.com). Upgrade [python] to version 3.4 when need.
* pip, virtualenv & virtualenvwrapper (I need to learn both of them.)
* Setup a web server (nginx), database (MySQL), Django, phpmyadmin

### 3rd stage:
* Write the apps for the business.
    * hobototes-data-centric apps.
    * Automate the calculation.
* Wordpress for article storage.
* Doing some automation, using cron job, e.g. automate the database backup.
* Doing some experiment, such as Rails4, node.js.

----
Shortcut
====
###Service starts after power on

VNC

BTSync

Django

### My tools

login: je09

python3.4 is `py`, located in /opt/python3.4/bin/python3.4

`py34-django` is the main develop environment for hobototes-data-centric apps

nginx is started by `sudo service nginx start`

The default nginx document root is `/usr/share/nginx/www`.

`mysql -uroot -ppassword`

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

### Custom software on Pi:
tightvncserver, vim-gtk, git, 

transmission, chromium,

htop, nmap, tree, p7zip

(No Dvorak keyboard layout setup is needed, as VNC transfer my key layout to the pi. :smiley:)
(7z on linux is 7za, where the package is called p7zip [#] (http://www.thegeekstuff.com/2010/04/7z-7zip-7za-file-compression/) )

#### TODO:
- [f] sublime -> use Vim, or code locally commit over Git
- [ ] utorrent -> TBC
- [ ] file sync between
    - [x] btsync
    - [f] Dropbox (no auto sync)-> TBC
- [ ] development environment
    - [x] upgrade to python3.4
    - [x] virtualenv
    - [x] virtualenvwrapper
    - [x] Django
        - [x] test: Django runs with python3.3+
        - [ ] test: MySQL as backend
    - [ ] MySQL
    - [ ] PHP5-fpm
        - [x] let php knows mysql
    - [ ] phpmyadmin
        - [ ] bind phpmyadmin to mysql
    - [ ] upgrade git
    - [ ] import existing data
- [ ] rails
    - [ ] ruby 2.1.0+
    - [ ] rbenv / rvm
    - [ ] rails 4.1+
- [ ] internal hosting
    - [x] nginx
        - [x] let nginx serves PHP (capture comm in port 9000)
    - [ ] wordpress 3.9
- [ ] automation / add some jobs to cron
- [ ] todo

How do I setup the Pi (a step by step record)
====

### Lookup IP
    ifconfig
    hostname -I

ref: http://www.raspberrypi.org/documentation/troubleshooting/hardware/networking/ip-address.md

### Setup ssh
    raspi-config
    reserve a fixed ip for pi, e.g. 192.168.0.101, for always on connection
    ssh pi@192.168.0.101

ref: http://www.raspberrypi.org/documentation/remote-access/ssh/unix.md

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



### Setup Python for development (enhance it) 
Read http://docs.python-guide.org/en/latest/ first, and [Python Packaging User Guide] (https://python-packaging-user-guide.readthedocs.org/en/latest/current.html) second. (from: [How to get Django] (https://www.djangoproject.com/download/) )
[Learn Python the Hard Way] (http://learnpythonthehardway.org/book/ex46.html) (Google: virtualenv project structure) provides a rich set of reading materials too.

[pip] (https://pip.pypa.io/en/latest/)

    sudo apt-get install python-pip

#### My approach to Python 3.3 & Django 1.7+

First at all. See the [Django 1.7's requirement] (https://docs.djangoproject.com/en/1.7/topics/install/), as I mainly develop the hobototes-data-centric apps on Django 1.7. (It works with Python 2.7, 3.2, 3.3)

Since the Python3 ships with Pi is version3.2, it is better to upgrade it to version 3.3 before installing Django 1.7 (currently 1.7-rc2). I have to upgrade it from source code, and put it into a new place rather than over-write the python shipped with Pi officially (To avoid system conflict.) Once it was successed, I could install Django1.7+ with virtualenv, doing test. Once the test was success, I could install MySQL and Nginx too.

A notes I bear in mind:

```
    System updates break everything
    Installing apt packages can overwrite pip-installed things
    Version conflicts
    Distribution upgrades are unpredictable chaos. Seriously. I've lost hair to these.
```

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
http://flask.pocoo.org/docs/installation/#virtualenv

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
    
`**Prefer**`
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
```

    pip install mysqlclient

in my python3.4 virtualenv after

    sudo apt-get install python-dev libmysqlclient-dev

which is obviously specific to ubuntu/debian, but I just wanted to share my success :) 
```

[#] (http://stackoverflow.com/questions/14087598/python-3-3-importerror-no-module-named-configparser)

:pray:
Last resort: simply, create a new virtualenv wyth system site-packages included by using the `--system-site-package` switch [#] (http://stackoverflow.com/questions/13288013/have-mysqldb-installed-works-outside-of-virtualenv-but-inside-it-doesnt-exist)

Update2:

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


ref too:
http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html

### Setup Rails


http://computers.tutsplus.com/tutorials/how-to-install-ruby-on-rails-on-raspberry-pi--cms-21421

## Setup the backend supporting for Django

** Need Nginx to serve PhpMyAdmin and Django and Wordpress. All of them need MySQL-server too.**

Tutorial in [For your Pi!] (http://raspberrypihelp.net/tutorials) provides the instruction on setting up Nginx. http://raspberrypihelp.net/tutorials/24-raspberry-pi-webserver Nginx, MySQL, PHP5-fpm, PHPMyAdmin <- All-in-one, this one useful
** I only follow this tutorial to install Nginx, MySQL, PHP5-fpm, PHPMyAdmin **

[Installing Nginx With PHP5 (And PHP-FPM) And MySQL Support (LEMP) On Ubuntu 12.04 LTS] (http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts) generally speak how to install nginx with PHP4 (PHP-FPM) and MySQL on Ubuntu 12.04, from Google: php5-fpm, when I wanna know what is that, after reading [pi's official document] (http://www.raspberrypi.org/documentation/remote-access/web-server/README.md).

[Running (almost) anything on Nginx with uWSGI - metz.log] (http://metz.gehn.net/2013/02/running-anything-on-nginx-with-uwsgi/) tells me what is uWSGI, a technology in python equivalent to PHP-FPM in php. From Google: php-fpm in python

### Setup Nginx

    sudo apt-get install nginx

Test it:

    sudo service nginx start

or

    /etc/init.d/nginx start

The nginx configuration is in /etc/nginx/nginx.conf which we open now:

    vi /etc/nginx/nginx.conf

The configuration is easy to understand (you can learn more about it here: http://wiki.nginx.org/NginxFullExample and here: http://wiki.nginx.org/NginxFullExample2)


Test:
http://127.0.0.1

(Add a line of `<? echo phpinfo();` in  `/usr/share/nginx/www/index.php`, to see if it serves php, later in the server setup.)


ref:
http://www.raspberrypi.org/documentation/remote-access/web-server/README.md
http://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md
http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts

http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html

#### How to bind PhpMyAdmin to Nginx / Configure nginx to serve phpMyAdmin
Google: raspberry nginx phpmyadmin
Google: raspberry nginx

1. http://magnatecha.com/set-up-phpmyadmin-with-nginx/. make nginx listens to port 81 and where phpmyadmin is localed in `/usr/share/phpmyadmin`
2. http://raspberrypihelp.net/tutorials/24-raspberry-pi-webserver again.
3. http://xmodulo.com/2014/04/lightweight-web-server-raspberry-pi.html demos on nginx and lighttpd: make a link `sudo ln -s /usr/share/phpmyadmin /var/www/phpmyadmin` to the document root and make no change on the server config

n. http://www.raspipress.com/2014/06/tutorial-install-wordpress-on-a-raspberry-pi-using-nginx/ has a 3 part series on installing PHP & nginx on raspberry

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

Test the config before reload the server: [Make Sure Unix / Linux Configuration Files Are Free From Syntax Errors] (http://www.cyberciti.biz/tips/check-unix-linux-configuration-file-for-syntax-errors.html)

additional ref:
@see the supplymentory


### Setup MySQL

#### Setup PHP5
We can make PHP5 work in nginx through PHP-FPM (PHP-FPM (FastCGI Process Manager) is an alternative PHP FastCGI implementation with some additional features useful for sites of any size, especially busier sites) which we install as follows:

    apt-get install php5-fpm

PHP-FPM is a daemon process (with the init script /etc/init.d/php5-fpm) that runs a FastCGI server on port 9000. 

ref:
http://www.howtoforge.com/installing-nginx-with-php5-and-php-fpm-and-mysql-support-lemp-on-ubuntu-12.04-lts

#### Setup PhpMyAdmin


#### Setup Wordpress
http://www.raspberrypi.org/documentation/usage/wordpress/README.md

Since Nginx can be configured to read web apps in any directory (e.g. It communite with PHP via port 9000, with PHP5-fpm), I consider to place Wordpress in /var/www/ , following the convention made by Apache.

###Backup

#### Backup disk image

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

ref: 
http://www.raspberrypi.org/forums/viewtopic.php?p=118519

### Backup files daily
Google: linux backup to dropbox

http://www.cyberciti.biz/open-source/30-cool-best-open-source-softwares-of-2013/

### Set Fonts
Do it on client side, as I seldom login to pi with keyboard and mouse but remote control it with ssh.

Google: linux install font

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

### Supplymentory

#### Linux system monitoring / Admin
* http://www.cyberciti.biz/tips/top-linux-monitoring-tools.html

#### Reading .gz doc on the fly

Google: how to read .gz doc in linux on the fly

As I facing a problem reading the .gz doc in `/usr/share/doc/nginx`, when I config ngnix today.

* http://www.cyberciti.biz/tips/decompress-and-expand-text-files.html

#### Learn to configure nginx better

* http://www.cyberciti.biz/tips/linux-unix-bsd-nginx-webserver-security.html
* http://wiki.nginx.org/Pitfalls
* http://wiki.nginx.org/QuickStart
* http://wiki.nginx.org/Configuration

#### Better system design with Django

Workflow in Django

* https://github.com/kmmbvnr/django-viewflow
* https://gist.github.com/Nagyman/9502133 says workflow is a IFM

Plotting Graph
* http://www.playpcesor.com/2014/08/excel-google-sheets-patterns.html


// Last update: 2014-08