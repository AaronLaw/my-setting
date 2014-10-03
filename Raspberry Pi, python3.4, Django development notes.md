Upgrading Python3 & running Django on Raspberry

### Everday Django Resources:

* RealPython
* [Open Sourcing a Python Project the Right Way - Jeff Knupp] (http://www.jeffknupp.com/blog/2013/08/16/open-sourcing-a-python-project-the-right-way/)
* https://code.djangoproject.com/wiki/DjangoResources (from: Google: django ui framework)
* http://www.fullstackpython.com/
﻿* http://en.wikipedia.org/wiki/Django_%28web_framework%29
* http://twoscoopspress.com/pages/django-tutorials
* http://www.tangowithdjango.com/
* http://www.tangowithdjango.com/book/index.html
* https://django-book.readthedocs.org/en/latest/# (from: http://www.meetup.com/Taipei-py/messages/boards/thread/34933702)
* http://www.barrymorrison.com/2012/10/zero-to-django-in-4-months-what-ive-learned-part-1/
* http://djangobook.py3k.cn/2.0/
* http://codecondo.com/web-scraping-python/
* Reddit: django
    * http://www.reddit.com/r/django/comments/1nm5n8/moving_from_php_to_django_setup_host_advice/

Some useful concepts / topic:
* Google: query django | rails | cakephp | codeigniter | laravel
* Google: debug django | rails | cakephp | codeigniter | laravel
* http://code.tutsplus.com/tutorials/why-laravel-is-taking-the-php-community-by-storm--pre-52639

### How do I explore & setup a sandbox environment for python development

Google: virtualenvwapper

[使用virtualenv创建虚拟python环境] (http://www.verydemo.com/cj.jsp?c=16&u=shi-yong-virtualenv-chuang-jian-xu-ni-python-huan-jing)


[Linux下使用Virtualenv搭建Django开发环境] (http://www.verydemo.com/demo_c152_i7000.html) shows how to use pip freeze to rebuild the python environment in development, soon or later in future.

    pip freeze > prj.txt

    pip freeze -r prj.txt

[搭建基于virtualenv的python 2.7开发环境 - python] (http://www.verydemo.com/demo_c122_i4285.html) shows how to upgrade to python 2.7 from 2.6. I might do this to upgrade to 3.3 from Pi's 3.2 also.

----

或許我應問得更直接:
Google: Raspberry python3.3 django

[Django 1.5, Python 3.3, and Virtual Environments] (http://www.micahcarrick.com/django-1-5-python-3-3-virtual-environments.html) runs Fedora 17 which ships with Python 3.2, Python 3.3 had to be installed from source. The author installed it into his home .local directory. Then, he used a virtual envirnment to install Django 1.5.

http://pydanny.com/experiences-with-django-python3.html
----
Google suggests me to search with "raspberry pi django nginx"

Google: raspberry pi django nginx

The 2nd link [ Setting Up Django On a Raspberry Pi ] (http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html)

----
### Django Tutorials

https://code.djangoproject.com/wiki/Tutorials

https://django-book.readthedocs.org/en/latest/# (from: http://www.meetup.com/Taipei-py/messages/boards/thread/34933702)
----

Django bulid a blog
* [Building a Blog with Django 1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)
* [Building a Blog in 30 minutes with Django] (https://www.youtube.com/watch?v=srHZoj3ASmk)

Blog example

http://arunrocks.com/recreating-the-building-a-blog-in-django-screencast/
https://www.youtube.com/watch?v=7rgph8en0Jc
https://github.com/django/djangoproject.com/tree/master/blog
----
####  how to set up a good project "skeleton" directory
What is the suggested project structure with virtualenv? (Should I place my django projects inside the virtualenv created folder? Or should I keep my projects away from the virtualenv folder? Does virtualenv affects how I structure my folders comparing to not using it?)

Google: virtualenv project structure

""I never place files inside the virtualenv directory. Virtualenv need have no impact on your project structure; just activate the virtualenv (or use its bin/python), and work on your files wherever you'd have them anyway. –  Carl Meyer Nov 23 '09 at 20:31""

there's no requirement to locate your application within a virtualenv directory. For example, you might have a project where you have multiple applications using the same virtualenv.

ref:
http://stackoverflow.com/questions/1783146/where-in-a-virtualenv-does-my-code-go
http://stackoverflow.com/questions/17837723/django-virtualenv-layout
----
Should I use generic foreign key, and how?
* http://stackoverflow.com/questions/25351550/should-i-use-generic-foreign-key-with-django-and-how
----
One table for diff type of category products
* http://stackoverflow.com/questions/3712688/creation-of-dynamic-model-fields-in-django/3713490#371349

----
Creation of dynamic model fields (dynamic attributes)
* http://stackoverflow.com/questions/3712688/creation-of-dynamic-model-fields-in-django/3713490#3713490

----
Django self-referential foreign key 

----
Access from the shell:
# https://docs.djangoproject.com/en/dev/ref/models/instances/#django.db.models.Model

    from django.db import models
    
    from product.models import *
    help(Topic)
----
Reuse "Material" info in pickup table

"Material" is a table column in the pickup table. The value of it maybe "cow skin", or "cow skin, plastic".

In order to min the data redundance, and save typing and free from typo, I am considering to *reuse* it.

That is, there are 2 solutions: 
1. I create a "materials" table, and make it in many-to-many relationship to "pickup" table.
2. I make it a generic class, and then bind it to "pickup" table.

For 2:
http://stackoverflow.com/questions/3712688/creation-of-dynamic-model-fields-in-django/3713490#3713490

For 1:
http://stackoverflow.com/questions/25351550/should-i-use-generic-foreign-key-with-django-and-how 
----
### Tagging
Google: Django tagging
https://www.djangopackages.com/packages/p/django-taggit/
[keyword cloud] (http://djangosteps.wordpress.com/2011/10/21/a-keyword-cloud-in-django/) (from: Google: ubuntu memcached django)

----
Comments
Google: django comment

But not shown in the admin interface.
Google: django comment in admin
http://stackoverflow.com/questions/4125022/how-to-display-comments-in-django-admin
http://stackoverflow.com/questions/15165009/form-in-django-admin-for-notes-or-comments-on-models
----
Image management
image, gallery, media
https://readthedocs.org/projects/tags/image/

### Image / Gallery / Media Management

https://www.djangopackages.com/search/?q=image
https://www.djangopackages.com/grids/g/gallery/
https://github.com/stefanfoulis/django-filer (from: http://djangosuit.com)

### Extend models
https://github.com/bconstantin/django_polymorphic
----

### South & Migration in Django 1.7
Google: should I use south in django 1.7
https://realpython.com/blog/python/django-migrations-a-primer/
http://treyhunner.com/2014/03/migrating-to-django-1-dot-7/

to reset the migration, run `zero`with migrate

	./manage.py migrate <app name> zero

----
Pre-populate database
Google: django fixture | django initial database
* https://docs.djangoproject.com/en/dev/howto/initial-data/
* https://github.com/alex/django-fixture-generator
----
### Auto complete
django-autocomplete-light
https://www.youtube.com/watch?v=fJIHiqWKUXI
http://django-autocomplete-light.readthedocs.org/en/latest/
https://github.com/yourlabs/django-autocomplete-light/tree/master
https://github.com/yourlabs/django-autocomplete-light/tree/master/test_project/non_admin
----
### Address Book
### Address book
https://www.djangopackages.com/packages/p/django-cities-light/

----
### Django Admin interface
Google: django admin 2


Google: django admin demo
----
Django bulid a blog
* [Building a Blog with Django 1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)
* [Building a Blog in 30 minutes with Django] (https://www.youtube.com/watch?v=srHZoj3ASmk)

----
Django jquery
Google: django jquery
http://www.tangowithdjango.com/book/chapters/ajax.html


----
### Markdown
Google: django markdown
django_markdown
https://github.com/klen/django_markdown
[Building a blog with Django1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)
----
### Static files
* http://django-autocomplete-light.readthedocs.org/en/v2/install.html
    * http://blog.yourlabs.org/post/30382323418/surviving-django-contrib-staticfiles-or-how-to-manage
    * https://docs.djangoproject.com/en/dev/howto/static-files/
    * https://docs.djangoproject.com/en/dev/ref/contrib/staticfiles/
----


----
Django deployment
* http://django-china.cn/topic/360/ 基于 nginx + uwsgi + virtualenv 简单的部署 Django 应用
* https://github.com/imelucifer/MyNote/blob/master/django/django%2Buwsgi%2Bnginx%2Bcentos%E9%83%A8%E7%BD%B2.md 使用vps部署django:uwsgi+nginx
* http://lightbird.net/dbe/
----
Price in Python
https://github.com/mirumee/prices (from: https://www.djangopackages.com/packages/p/django-images/)
https://github.com/mirumee/django-prices (from: https://www.djangopackages.com/packages/p/django-images/)
----

Maybe useful


[利用 Django 与 jQuery 回创建电子表格应用程序] http://www.verydemo.com/demo_c110_i5114.html

[利用 Django admin 完成更多任务] http://www.verydemo.com/demo_c288_i69887.html

https://github.com/phalt/DjangoPi A one-click Django installer for Raspberry pi.

http://xmodulo.com/2012/11/how-to-view-list-of-mysql-users-and-their-privileges.html

http://xmodulo.com/2013/04/how-to-fix-apt-get-update-error-on-ubuntu.html

[「敗」站著工作環境敗家記錄] (http://demo.tc/Post/794)

[实例详解Django的 select_related 和 prefetch_related 函数对 QuerySet 查询的优化（三）] (http://blog.jobbole.com/75435/)

[Starting a Django 1.6 Project the Right Way] (http://www.jeffknupp.com/blog/2013/12/18/starting-a-django-16-project-the-right-way/) (from: http://blog.jobbole.com/53346/)


Google:productive infographic
http://blog.visual.ly/10-infographics-to-help-your-productivity/

Google: rails cms
http://designzum.com/2014/05/24/12-best-free-premium-wordpress-theme-frameworks-2014/
(from: http://designzum.com/2014/02/10/best-ruby-on-rails-content-management-systems-cms/, from Google: rails cms)


Google: django orm vs activerecord
https://bernardopires.com/2014/03/rails-vs-django-an-in-depth-technical-comparison/
http://scottmoonen.com/2009/01/09/my-experience-with-django-and-rails/