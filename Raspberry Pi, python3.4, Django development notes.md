Upgrading Python3 & running Django on Raspberry

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

----
Google suggests me to search with "raspberry pi django nginx"

Google: raspberry pi django nginx

The 2nd link [ Setting Up Django On a Raspberry Pi ] (http://blog.mattwoodward.com/2013/01/setting-up-django-on-raspberry-pi.html)
----
### Django Tutorials

https://code.djangoproject.com/wiki/Tutorials

https://django-book.readthedocs.org/en/latest/# (from: http://www.meetup.com/Taipei-py/messages/boards/thread/34933702)
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

----
Comments
Google: django comment

But not shown in the admin interface.
Google: django comment in admin
http://stackoverflow.com/questions/4125022/how-to-display-comments-in-django-admin
http://stackoverflow.com/questions/15165009/form-in-django-admin-for-notes-or-comments-on-models
----
### South & Migration in Django 1.7
Google: should I use south in django 1.7
https://realpython.com/blog/python/django-migrations-a-primer/
http://treyhunner.com/2014/03/migrating-to-django-1-dot-7/

to reset the migration, run `zero`with migrate

	./manage.py migrate product zero
	
----
Pre-popular database
Google: django fixture | django initial database
* https://docs.djangoproject.com/en/dev/howto/initial-data/

----
### Django Admin interface
Google: django admin 2


Google: django admin demo
----
Django bulid a blog
* [Building a Blog with Django 1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)
* [Building a Blog in 30 minutes with Django] (https://www.youtube.com/watch?v=srHZoj3ASmk)

----
### Markdown
Google: django markdown
django_markdown
https://github.com/klen/django_markdown
[Building a blog with Django1.7 in 16 mins] (https://www.youtube.com/watch?v=7rgph8en0Jc)

----
Django deployment
* http://django-china.cn/topic/360/ 基于 nginx + uwsgi + virtualenv 简单的部署 Django 应用
* https://github.com/imelucifer/MyNote/blob/master/django/django%2Buwsgi%2Bnginx%2Bcentos%E9%83%A8%E7%BD%B2.md 使用vps部署django:uwsgi+nginx
* http://lightbird.net/dbe/
----
Frontend
* [跟(不)上網頁前端技術（資源大雜燴）] (http://huan-lin.blogspot.com/2013/08/front-end-technologies.html)

  * http://kkbruce.tw/ bootstrapv2
  * https://angularjs.org/
      * http://campus.codeschool.com/courses/shaping-up-with-angular-js/intro

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
