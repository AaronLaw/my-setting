



----

#### WP-FFPC

https://wordpress.org/plugins/wp-ffpc -> PHP Memcached
clients on memcached.org -> PHP Memcached

(See the review of wp-ffpc, phoenix13 says 

WP-FFPC with Nginx+PHP-FPM+Memcached+APC : perfect!)

Once the php-memcached binding is installed, restart the php5-fpm and test it with `phpinfo()`

	<?php phpinfo(); ?>

There should be a memcached section be shown.

Once Memcache is installed, and the binding is ok, edit the `wp-config.php` and add the following command:

	define('WP_CACHE', true);

Result: page loading drops from  9.79s to xxx on Pi

#### NGINX Cache Optimizer

#### cache that works with Ngnix

Wordpress Plugins: speed
Wordpress Plugins: Nginx
Wordpress Plugins: memcached
Wordpress Plugins: redis ( -> no rating at the reids plugins -> seems people seldom use redis to cache)
----

Some useful concepts / topic:
Laravel tutorial | cast | chinese | dev server | TDD
Medium: Laravel | Boostrap
Stock exchange
Quora
Reddit

* Google: query django | rails | cakephp | codeigniter | laravel
* Google: debug django | rails | cakephp | codeigniter | laravel
* Google: django testing | automated test | TDD
* Google: class based view
* Google: django restful
* http://code.tutsplus.com/tutorials/why-laravel-is-taking-the-php-community-by-storm--pre-52639

* Stack exchange: 
* Quora:  [Ruby vs Python] (http://www.quora.com/Ruby-vs-Python) | django | laravel | bootstrap | [Web Development] (http://www.quora.com/Web-Development) | [Web Design] (http://www.quora.com/Web-Design) | [Web Applications] (http://www.quora.com/Web-Applications)
* Reddit
* Medium: laravel | django | bootstrap | design | ui | rails
* http://laravel.io/forum