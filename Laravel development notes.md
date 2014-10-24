# Introduction to Laravel

http://www.reddit.com/r/learnprogramming/comments/1h3zr0/my_boyfriends_learn_to_program_manifesto_on/
[What  is the best way to learn PHP?] (http://www.quora.com/What-is-the-best-way-to-learn-PHP-1)
[Ruby on Rails (web framework): What is the best way to learn Ruby on Rails? Bloc.io? theFirehoseProject?] (http://www.quora.com/Ruby-on-Rails-web-framework/What-is-the-best-way-to-learn-Ruby-on-Rails-Bloc-io-theFirehoseProject)
[Ruby on Rails (web framework): As of the 27th of January 2013, what's the best way for someone who knows a lot about HTML and CSS to learn Ruby on Rails?] (http://www.quora.com/Ruby-on-Rails-web-framework/As-of-the-27th-of-January-2013-whats-the-best-way-for-someone-who-knows-a-lot-about-HTML-and-CSS-to-learn-Ruby-on-Rails)
Google: php framework -> laravel
Google: php framework laravel
* http://code.tutsplus.com/tutorials/why-laravel-is-taking-the-php-community-by-storm--pre-52639
* http://brianretterer.com/why-laravel-is-the-best-php-framework/
* [Full Stack Python - Web frameworks] (http://www.fullstackpython.com/web-frameworks.html) 
* http://codecondo.com/5-books-learning-laravel-4/
* http://kejyun.github.io/Laravel-4-Documentation-Traditional-Chinese/docs/quick/ (from: Google: php framework laravel chinese)
* http://laravel.com/docs/4.2/installation
* [Medium - Laravel 4 Tutorials] (https://medium.com/laravel-4)
    * from: Google: laravel tutorials. See also "wordpress", "django" in medium.com
* http://laravel.tw/
    * from: Youtube: laravel -> [PHP也有Day#4 - 實戰驚豔 Laravel 給你的 5 個驚嘆號 by Bobo] (https://www.youtube.com/watch?v=Lj6sK3pfyO8) -> Google: laravel tw -> this
* https://github.com/ziadoz/awesome-php
* https://github.com/ludo237/awesome-laravel4
* https://github.com/chiraggude/awesome-laravel
* http://daylerees.com/codebright

* Stack exchange: 
* Quora:  [Ruby vs Python] (http://www.quora.com/Ruby-vs-Python) | django | laravel | bootstrap | [Web Development] (http://www.quora.com/Web-Development) | [Web Design] (http://www.quora.com/Web-Design) | [Web Applications] (http://www.quora.com/Web-Applications)
* Reddit
* Medium: laravel | django | bootstrap | design | ui | rails
* http://laravel.io/forum
* Quora: how to learn laravel
* Youtube: laravel blog example/tutorial | TODO example/tutorial

## Tutorial materials

Laravel official doc provides no tutorials (not like what django doc does nor rails guide does), I have to find it "outsite". -> Google: laravel tutorial | laravel guide | laravel cast

* Quora: how to learn laravel
    * -> http://www.quora.com/What-is-the-best-way-to-learn-Laravel
    * -> http://www.quora.com/What-are-the-best-resources-for-learning-Laravel-4
* https://laracasts.com/
* Baidu: laravel tutorial
    * http://learninglaravel.net/ giveaway an ebook, and lots of tutorials (cast) (including Todo List and Blog tutorial on Youtube)

### Laravel Blog example
* Medium: laravel
    * https://medium.com/laravel-4
* Google: laravel blog example
    * http://www.codeheaps.com/php-programming/creating-blog-using-laravel-4-part-1/
    * https://laracasts.com/series/laravel-from-scratch
    * http://laravel.io/forum/02-27-2014-simple-application-built-with-laravel
* Google: laravel tutorial for beginners
    *  http://stackoverflow.com/questions/23319192/a-good-start-to-laravel-beginner
    *  http://code.tutsplus.com/tutorials/building-web-applications-from-scratch-with-laravel--net-25517
    * http://code.tutsplus.com/categories/laravel
    * https://www.youtube.com/watch?v=20gXsB7EVM8
* Youtube: laravel blog example | laravel TODO example

### Rails4 Blog example
* Youtube: rails4 blog
    *  [How To Build A Todo App In Rails 4] (https://www.youtube.com/watch?v=fd1Vn-Wvy2w)
        *  http://mackenziechild.me/how-to-build-a-todo-app-in-rails-4/
        * [Youtube: ackenzie Child] (https://www.youtube.com/user/mackenziechild?feature=em-subconf-s3-chl)


----
## On how to learn

http://www.quora.com/What-is-the-best-way-to-learn-PHP-1

Read things that you need to read and don't worry too much. :)

What is your background? I used to be a CS student, and working in a different field rather than IT-related. However, I love to code.

PHP is ugly, and I taught myself codnig in Python using Django for making web. I don't like PHP's syntax. However, recently, I've got a project using PHP. That is PHP5.4+ and I choose to use a MVC framework called "Laravel".

My approach to learn PHP is learn by doing (with a project that is live and you are using it, such as the Django project, which is on my private network, I am doing.)

Firstly I (and you) should have some basic background about a language, then go to make something real and useful (by the approach, I and you are facing some real problem. For example: how can I increment 21...29 to 30? round() is helpful but it doesn't give me the exact result I want. And I have to do some basic math with it...)

That is, go to read the basic part of doc (on Hypertext Preprocessor), pick up a MVC framework with give you good structure, set a goal to make a real project (weblog system / CMS is a good starting point). When you make the project, you are facing some real problem that you have to solve. Then, go to read the doc of the language and the framework.

Read things that you need to read and don't worry too much. :)
----

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

    laravel new blog # ~/.composer/vender/bin/laravel

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

## Restful

## Class based view

## Automated Test
