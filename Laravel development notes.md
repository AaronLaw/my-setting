# Introduction to Laravel

Google: php framework -> laravel
Google: php framework laravel
* http://code.tutsplus.com/tutorials/why-laravel-is-taking-the-php-community-by-storm--pre-52639
* http://brianretterer.com/why-laravel-is-the-best-php-framework/
* http://codecondo.com/5-books-learning-laravel-4/
* http://kejyun.github.io/Laravel-4-Documentation-Traditional-Chinese/docs/quick/ (from: Google: php framework laravel chinese)
* http://laravel.com/docs/4.2/installation
* [Medium - Laravel 4 Tutorials] (https://medium.com/laravel-4)
    * from: Google: laravel tutorials. See also "wordpress", "django" in medium.com
* http://laravel.tw/
    * from: Youtube: laravel -> [PHP也有Day#4 - 實戰驚豔 Laravel 給你的 5 個驚嘆號 by Bobo] (https://www.youtube.com/watch?v=Lj6sK3pfyO8) -> Google: laravel tw -> this

* Stack exchange: 
* Quora:  [Ruby vs Python] (http://www.quora.com/Ruby-vs-Python) | django | laravel | bootstrap | [Web Development] (http://www.quora.com/Web-Development) | [Web Design] (http://www.quora.com/Web-Design) | [Web Applications] (http://www.quora.com/Web-Applications)
* Reddit
* Medium: laravel | django | bootstrap | design | ui | rails
* http://laravel.io/forum

# Getting Laravel up


First, install [Composer] (https://getcomposer.org/download/):

    curl -sS https://getcomposer.org/installer | php

You can place this file anywhere you wish. If you put it in your `PATH`, you can access it globally. On unixy systems you can even make it executable and invoke it without php.

You can run these commands to easily access composer from anywhere on your system:

    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer

ref:
* http://kejyun.github.io/Laravel-4-Documentation-Traditional-Chinese/docs/quick/
* http://laravel.com/docs/4.2/installation

Now, we can go to install Lavavel.

First, download the Laravel installer using Composer.

    composer global require "laravel/installer=~1.1"

Make sure to place the ~/.composer/vendor/bin directory in your PATH so the laravel executable is found when you run the laravel command in your terminal.

Once installed, the simple laravel new command will create a fresh Laravel installation in the directory you specify. For instance, laravel new blog would create a directory named blog containing a fresh Laravel installation with all dependencies installed. This method of installation is much faster than installing via Composer.

ref:
http://laravel.com/docs/4.2/quick

## Serving Laravel

Typically, you may use a web server such as Apache or Nginx to serve your Laravel applications. If you are on PHP 5.4+ and would like to use PHP's built-in development server, you may use the serve Artisan command:

    php artisan server

It returns an error:

    mcrypt php extension required

Google: php artisan server mcrypt php extension required
* [Laravel.io - Difficulty installing Laravel: Getting error "Mcrypt PHP extension required"] (http://laravel.io/forum/02-08-2014-difficulty-installing-laravel-getting-error-mcrypt-php-extension-required)

Check 

    which php
    php --ini
    php -v

use `grep mcrypt` to see if there was `mcrypt` there. Since I have `php5-fpm` install, I go to check it too.

    php -i | grep mcrypt

I see no  `mcrypt` there. I have to install it now. 
Installing php5-mcrypt doesn't automatically enable the module, so I had to enable it manually:

First install php5-mcrypt

    apt-get install php5-mcrypt

Create an auxiliary symlink and enable the module:

    cd /etc/php5/mods-available
    ln -sf ../conf.d/mcrypt.ini . # make a symlink to ini files in mods-available
    php5enmod mcrypt # enable it

Reload the web server

    service apache2 reload
    sudo service php5-fpm restart



And, if you need an isolated development environment, you should try [Laravel Homestead] (http://laravel.com/docs/4.2/homestead)

## Automated Test