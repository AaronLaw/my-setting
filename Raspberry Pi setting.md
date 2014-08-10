2014-08-06: I learn markdown also here: https://help.github.com/articles/github-flavored-markdown

Purpose of Pi: (2014-08)
========
1. Help to maintace the daily operation of hobototes (e.g. When we travel around the world, we need a small-enough computer for operation.).
2. As a device to operate all-day-long with low power consumption. (verse the power a notebook needs)
3. Runs the hobototes-data-centric apps on it. (To free my notebook from always-turning-on. Moving django project to it.)
4. Runs as a host to share files. (BTSync, verse Dropbox)
5. Needs no maintance once after setup. Once it's broken, it is brain-less to be rebuilt the software. (0-day recovery.) (verse PC, which the storage, power suppile, display unit are easy to be broken, and making heat. PC needs to be setup again once a hardawre is replaced. Time consuming.)
6. Plug and play,


----
Raspberry for hobototes.
====
### 1st stage:
* The official Raspbian image with SSH, git, VNC, btsync, dropbox and other system-admin-related stuffs.
* Setup a dynamic dns. (Therefore, I can connect the web apps when I am not on the local network.)
* Make a backup of the SD card before going to the 2nd stage.

## 2nd stage:
* Preparation for running [Django] (http://djangoproject.com). Upgrade [python] to version 3.4 when need.
* Setup a web server (nginx), database (MySQL), Django

## 3rd stage:
* Write the apps for the business.
** hobototes-data-centric apps.
** Automate the calculation.
* Doing some automation, e.g. automate the database backup.
* Doing some experiment, such as Rails4, node.js.




Service starting
VNC

BTSync

Django
