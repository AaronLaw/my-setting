Tango with Django
=================
**Work quickly, safely, and without headaches. So I joined to use Django for web development.**

This is a little project that I keep as a record how I learn to use Django for web development. I mainly follow the tutorial of Tango with Django, however, it is not limited to the tutorial and should be more that it.

As I need a good record as a reference on how to develop with Django in the future, I plan each commit carefully.

## Purpose
<p align="center">
<img src="http://i.imgur.com/t6iC9TC.png">
<img src="https://www.spaghetti-western.net/images/thumb/7/73/DjangoSpecial_Banner.png/400px-DjangoSpecial_Banner.png">
</p>

Git recently celebrated its 10 years anniversary, but most engineers are still confused by its intricacy (3 of the [top 5 questions of all time](http://stackoverflow.com/questions?sort=votes) on Stack Overflow are Git related). Since Git turns even simple actions into mystifying commands (“git add” to stage versus “git reset HEAD” to unstage anyone?), it’s no surprise users waste time, get frustrated, distract the rest of their team for help, or worse, screw up their repo!

## Design overview


Getting Started
===============

## Setup

### The Setup process 1:
Setup the environment with virtualenv and  virtualenvwrapper.

    this is some commands.
    a second commands
    
This is an `inline command`.

### The Setup process 2:
Setup the environment with docker.

## Run it!

## Deployment

Reference
=========

## General Ref:
* The structure/formatting of this doc: [README.md] (https://github.com/git-up/GitUp/blob/master/README.md) of [GitUp](https://github.com/git-up/GitUp)
* The tutorial to build this project: [How to Tango with Django] (http://www.tangowithdjango.com/)
* The design/style of the webpage: [django weekly] (http://djangoweekly.com/newsletter/) -> Projects -> https://github.com/bitpixdigital/django-next-train

## Docker
* [Django by Docker Official Image](https://store.docker.com/images/65765d71-d893-407d-a707-486c7381dfbf?tab=description)

Docker Example:

ref: jun.oct-13.us/cn/node/60 -> jun.oct-13.us/cn/article/how-to-use-docker-drupal-create-webform
# docker run --name drupaldb -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=drupal -d mariadb
# docker run --name d8docker --link drupaldb:mysql -p 80:80 -d drupal:741

For using wordpress:
Google: wordpress docker -> https://hub.docker.com/_/wordpress/
Docker.com: mariadb -> 

For using wordpres with docker compose:
Google: wordpress docker -> https://docs.docker.com/compose/wordpress
Google: wordpress docker -> http://www.sitepoint.com/how-to-use-the-official-docker-wordpress-image/

Contributing
============

See [CONTRIBUTING.md](CONTRIBUTING.md).

Credits
=======

- [@swisspol](https://github.com/swisspol): concept and code
- [@wwayneee](https://github.com/wwayneee): UI design
- [@jayeb](https://github.com/jayeb): website

*Also a big thanks to the fine [libgit2](https://libgit2.github.com/) contributors without whom GitUp would have never existed!*

License
=======

GitUp is copyright 2015-2016 Aaron Law and available under [GPL v3 license](http://www.gnu.org/licenses/gpl-3.0.txt). See the [LICENSE](LICENSE) file in the project for more information.


Last update: 2014-08-20 01:27, Hong Kong
