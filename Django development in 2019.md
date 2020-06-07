
# Project RAM, Django and websites

### Mentor

* Style of release notes: http://shanalikhan.github.io/2016/05/14/Visual-studio-code-sync-settings-release-notes.html
* Google: syncthing --reset-delta -> Google: syncthing delta sync -> https://danie1.me/2019/01/29/my-journey-to-syncthing/

## What is a Web Framework

* https://jeffknupp.com/blog/2014/03/03/what-is-a-web-framework/
* Google: what is a web framework -> [Web Frameworks  How To Get Started](https://djangostars.com/blog/what-is-a-web-framework/)
* Google: what is a web framework -> https://www.quora.com/What-is-a-web-framework-1
* Google: what is a web framework -> [Why You Shouldn't Use A Web Framework - DEV Community 👩‍💻👨‍💻](https://dev.to/gypsydave5/why-you-shouldnt-use-a-web-framework-3g24)
* [Git小书-图书-图灵社区](www.ituring.com.cn/book/1870) -> [1000copy的文章-图灵社区](www.ituring.com.cn/space/190105) -> [《bootstrap小书》免费上线。节省时间快速学习bootstrap框架的利器-图灵社区](www.ituring.com.cn/article/272595) -> [bootstrap-图灵社区](www.ituring.com.cn/tag/1315) -> [如何水水地写一个网站。（草稿）-图灵社区](www.ituring.com.cn/article/6576)
* [郭方超](https://gitbook.cn/gitchat/author/5a4d99e21037756c47ed8429) - [快速开发一个 Web 框架](https://gitbook.cn/gitchat/activity/5b5c2676d7a1a133f9f6d63b)
* Google: syncthing -> [Syncthing就是我要的同步备份软件 | 底噪](https://zhih.me/syncthing-the-best/) -> [WEB是如何工作的 | 底噪](https://zhih.me/how-the-web-works/)

  



![Model-Template-View](https://djangogirlstaipei.gitbooks.io/django-girls-taipei-tutorial/images/MTV.png)

### Python Web Framework

Django, Flask, Masonite, Vue.js

* [Table of Contents - Full Stack Python](https://www.fullstackpython.com/table-of-contents.html) (django, flask, vue.js...no masonite)
* Real Python.com (django, flask...no vue.js, masonite)
* [Flask vs. Django: Choose Your Python Web Framework](https://kite.com/blog/python/flask-vs-django-python)
* [Django和Flask这两个框架在设计上各方面有什么优缺点？](https://www.zhihu.com/question/41564604/answer/660256963)
* Google: django.db.utils.InternalError: (1060, "Duplicate column name -> [django数据库migrate失败的解决方法 | 卡瓦邦噶！](https://www.kawabangga.com/posts/1634) -> [Django中null和blank的区别 | 卡瓦邦噶！](https://www.kawabangga.com/posts/1810) -> [如何学Python？ | 卡瓦邦噶！](https://www.kawabangga.com/how-to-learn-python) -> [Python_Golang Web 入坑指南 — python-web-guide 0.1 文档](https://python-web-guide.readthedocs.io/zh/latest/)
* [Is Django a Full Stack Framework? - William Vincent](https://wsvincent.com/is-django-a-full-stack-framework/)

### Setup Development Environment

#### The server

* [Server For Hackers](https://serversforhackers.com/)
  * https://github.com/Servers-for-Hackers
* https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04

#### The Python env

* Google: python tutorial -> [Django Tutorial in Visual Studio Code](https://code.visualstudio.com/docs/python/tutorial-django)
* [PyCoder's Weekly #363 – APRIL 9, 2019](https://pycoders.com/issues/363) -> [Python Development in Visual Studio Code (Setup Guide)](https://realpython.com/courses/python-development-visual-studio-code-setup-guide/)
* Google: flask tutorial -> [Flask Tutorial in Visual Studio Code](https://code.visualstudio.com/docs/python/tutorial-flask)

Q: 2020-06-07: What if `python3.8`, which I installed with `sudo apt install python3.8`, doesn't not come with `pip3` ?

* [Installing Python 3 on Linux — The Hitchhiker's Guide to Python](https://docs.python-guide.org/starting/install3/linux/)

Q: 2019-07-26: What if running Django on Docker? (Just like [running Wordpress on Docker](https://docs.docker.com/compose/wordpress/))

	-  Google: PHP docker -> Google: wamp docker -> [Devilbox](http://devilbox.org/) (is a modern and highly customisable **dockerized PHP stack** supporting full **LAMP** and **MEAN** and running on all major platforms.) -> Google: django stack docker

Q: 2019-09-12: What if we have a using database? ( integrate Django into legacy databases)

- Google: django existing database -> [Django ORM Cookbook](https://books.agiliq.com/projects/django-orm-cookbook/en/latest/index.html) » [5. How to convert existing databases to Django models](https://books.agiliq.com/projects/django-orm-cookbook/en/latest/existing_database.html), https://django-book.readthedocs.io/en/latest/chapter18.html



## Guide on Building with Django

### Tutorial / Example in prototyping with Django (single page, & SPA)

* [About - William Vincent](https://wsvincent.com/about/) -> [8 Reasons Why Learning Django is Hard](https://tinyurl.com/djangoboston-2019) - Django Boston (*January 2019*)
* [Official Polls tutorial](https://docs.djangoproject.com/en/dev/intro/tutorial01/) - for intermediate web developers
* Django Girls
  * [DjangoGirls](https://tutorial.djangogirls.org/en/) - blog with FBVs
  * <https://tutorial.djangogirls.org/en/whats_next/> -> [www.gettingstartedwithdjango.com](http://www.gettingstartedwithdjango.com/)
  * https://djangogirlstaipei.gitbooks.io/django-girls-taipei-tutorial/django/installation.html
* [Django Tutorials - Real Python](https://realpython.com/tutorials/django/) (testing, RESTful API, deployment)
  * [RealPython](https://realpython.com/tutorials/django/) - growing list of tutorials, some out-of-date
* [Django Web Framework (Python) - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django), [Django 網站框架 (Python)](https://developer.mozilla.org/zh-TW/docs/Learn/Server-side/Django) 
  * [Mozilla](https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django) - lending library app
* [Django Tutorial in Visual Studio Code](https://code.visualstudio.com/docs/python/tutorial-django)
* Why Django: [Introduction   Django For Beginners](https://djangoforbeginners.com/introduction/)
  * [Django for Beginners](https://djangoforbeginners.com/) - 3 apps with CBVs
* Google: Django for Beginner -> [SimpleIsBetterThanComplex - A Complete Beginner's Guide to Django](https://simpleisbetterthancomplex.com/series/beginners-guide/1.11/)  - beginner’s guide 7-part series (Django 1.11)
* Awesome Django
* [Django 2 CRUD Tutorial: Generic Class-Based Views | Techiediaries](https://www.techiediaries.com/django-crud-generic-views/)
* [Get Started With Django Part 1: Build a Portfolio App](https://realpython.com/get-started-with-django-1/)
* [Python Django Crash Course - YouTube](https://www.youtube.com/watch?v=D6esTdOLXh4)
* 2019-10-12: Google:django custom user model -> Google:django custom user model example --> Google:django blog model code example -> [Building A Blog Application With Django | Django Central](https://djangocentral.com/building-a-blog-application-with-django/) (Django 2.x)
* 2019-10-14: Google: django foreign key on_delete -> [Django2.0から必須になったon_deleteの使い方 - Django2の実力をつけるチュートリアルサイトDjangoBrothers](https://djangobrothers.com/blogs/on_delete/)
* 2019-10-18: [12 Hour Coding Livestream - Creating an Online Game with Python - YouTube](https://www.youtube.com/watch?v=wDIQ17T3sRk) -> [Tech With Tim - YouTube](https://www.youtube.com/channel/UC4JX40jDee_tINbkjycV4Sg) -> [Tech With Tim - Python & Java Programming Tutorials - techwithtim.net](https://techwithtim.net) -> [Python Django Tutorial - techwithtim.net](https://techwithtim.net/tutorials/django/) & [Django Tutorial - Setup, Installation and Page Navigation - YouTube](https://www.youtube.com/watch?v=Z4D3M-NSN58&list=PLzMcBGfZo4-kQkZp-j9PNyKq7Yw5VYjq9)
* 2019-10-20: Google: django why appname is added twice in url -> [Web Development with Django (article) - DataCamp](https://www.datacamp.com/community/tutorials/web-development-django)
* 2019-10-25: Google: django tw -> [twtrubiks_django-tutorial  Django 基本教學 - 從無到有 Django-Beginners-Guide 📝](https://github.com/twtrubiks/django-tutorial) (Django 1.11)
* [为什么我学了Django/Flask，还是不会做Web开发？](https://zhuanlan.zhihu.com/p/40696794)
* [Java Web 后台开发效率提高](https://gitbook.cn/gitchat/activity/5b42aac8326c9140b77d9081)
* [值得关注的开源软件推荐](https://gitbook.cn/gitchat/activity/59f5338eb1e2ca682628410d)
* [如何在开源项目中学到更多](https://gitbook.cn/gitchat/activity/596337ac5ea3891e8f3e67de?refresh=true)



### Tutorial on Django (fullstack)

Tango with Django, Django Girls, MDN, Microsoft's Visual Studio Code, webpack tw -> django tw, django cn

* [Tango with Django](www.tangowithdjango.com): 1.5, 1.7, 1.9/1.10/1.11, 2.x
  * https://tango-with-django.readthedocs.io/en/latest/
  * book manuscript: https://github.com/leifos/tango_with_django_2, implementation as code: https://github.com/maxwelld90/tango_with_django_2_code/
* https://wsvincent.com/django-custom-user-model-tutorial/ - [Django for Beginners / APIs / Professionals](https://wsvincent.com/books/) = https://wsvincent.com/ = https://djangochat.com
  * Why Django: [Introduction   Django For Beginners](https://djangoforbeginners.com/introduction/)
  * Complete source code: https://github.com/wsvincent/djangoforbeginners
  * 2019-10-22: [DjangoCon 2019 - Search From the Ground Up by William S. Vincent - YouTube](https://www.youtube.com/watch?v=is3R8d420D4)
* [Learn Enough to Be Dangerous](https://www.learnenough.com/all-access)
* [想用Django+ Bootstrap写一个网站， 有哪些比较系统完整的书或者视频可以参考？ - 知乎](https://www.zhihu.com/question/29804463/answer/46005463)
* Google: django bootstrap教學 -> [[Day16] 柚子放學後的網頁生活 - Django & Bootstrap - iT 邦幫忙__一起幫忙解決難題，拯救 IT 人的一天](https://ithelp.ithome.com.tw/articles/10206816) -> [柚子放學後的網頁生活](https://ithelp.ithome.com.tw/users/20111479/ironman/1790)
* 2019-10-10: [Introduction to class-based views | Django documentation | Django](https://docs.djangoproject.com/en/2.2/topics/class-based-views/intro/) -> Google: Ancestors (MRO) -> [Django Tutorial for Programmers: 19. Class-based Views - iT 邦幫忙](https://ithelp.ithome.com.tw/articles/10160356) -> [為程式人寫的 Django Tutorial :: 2014 iT 邦幫忙鐵人賽](https://ithelp.ithome.com.tw/users/20091495/ironman/844) (@2014) = https://github.com/uranusjr/django-tutorial-for-programmers/tree/master
* 2019-10-14: Google:django "INSTALLED_APPS." % (module, name)  -> [Day7 : 探討 INSTALLED_APPS - iT 邦幫忙](https://ithelp.ithome.com.tw/articles/10200276) -> [From Django 1.11 to Django 2.1 :: 2019 iT 邦幫忙鐵人賽](https://ithelp.ithome.com.tw/users/20111829/ironman/1804)
* 2019-10-23: Google: django.db.utils.IntegrityError: FOREIGN KEY constraint failed sqlite createsuperuser -> [实战：利用Django开发部署自己的个人博客（5）Django admin后台管理| 人生苦短 17python](www.17python.com/blog/57)
* [A Complete Beginner's Guide to Django](https://simpleisbetterthancomplex.com/series/beginners-guide/1.11/) (Django 1.11)
  - Google: django bootstrap4 -> [How to Use Bootstrap 4 Forms With Django - Simple is Better Than Complex](https://simpleisbetterthancomplex.com/tutorial/2018/08/13/how-to-use-bootstrap-4-forms-with-django.html) -> [Series](https://simpleisbetterthancomplex.com/series/) -> [A Complete Beginner's Guide to Django](https://simpleisbetterthancomplex.com/series/beginners-guide/1.11/)
* Google: django bootstrap4 -> [Django搭建个人博客：使用 Bootstrap 4 改写模板文件 - Django搭建个人博客 - SegmentFault 思否](https://segmentfault.com/a/1190000016459726) -> [Django搭建个人博客教程](https://github.com/stacklens/django_blog_tutorial) (Django 2.1)
* Don Wei Ming https://github.com/dongweiming/lyanna
* Google: Django template not found -> [Django’s Templates - Python Django Tutorials](https://djangobook.com/mdj2-django-templates/) -> [Mastering Django 2 – The Book - Python Django Tutorials](https://djangobook.com)
* [CodingEntrepreneurs - YouTube](https://www.youtube.com/channel/UCWEHue8kksIaktO8KTTN_zg)
  * [Try DJANGO TUTORIAL Series (v2.2) _ PYTHON Web Development with Django version 2.2 - YouTube](https://www.youtube.com/watch?v=-oQvMHpKkms) -> https://github.com/codingforentrepreneurs/Try-Django-2.2
  * Series HEAD [Try DJANGO Tutorial - 1 - Welcome - YouTube.html](https://www.youtube.com/watch?v=uu98pqiUJU8&list=PLEsfXFp6DpzTD1BD1aWNxS2Ep06vIkaeW) -> [Try DJANGO TUTORIAL Series (v2.2) _ PYTHON Web Development with Django version 2.2 - YouTube](https://www.youtube.com/watch?v=-oQvMHpKkms)
  * [How to Integrate Django to any Javascript Front End _ Django to React _ Django to Angular - YouTube](https://www.youtube.com/watch?v=08Oulp3OpJA)
  * [Upgrading Try DJANGO 1.11 to Django 2.0 _ Django TUTORIAL - YouTube](https://www.youtube.com/watch?v=v1r1Qu7kaZI)
  * [Build a Rest API with the Django REST Framework - YouTube](https://www.youtube.com/watch?v=tG6O8YF91HE)
  * [Blog API with Django Rest Framework 1 of 33 - Welcome - YouTube](https://www.youtube.com/watch?v=XMu0T6L2KRQ&list=PLEsfXFp6DpzTOcOVdZF-th7BS_GYGguAS)
  * [Custom Django User Model _ DJANGO Tutorial - YouTube - CodingEntrepreneurs](https://www.youtube.com/watch?v=HshbjK1vDtY)
  * Google: django namespace app_name -> [namespace vs app_name  r/django](https://www.reddit.com/r/django/comments/9qatau/namespace_vs_app_name/) ->  [Try DJANGO Tutorial - 35 - In App URLs and Namespacing - YouTube](https://www.youtube.com/watch?v=_B2yip40LFI&feature=youtu.be) (Django 2.2)
* [Pygame Tutorial - Creating Tetris - YouTube](https://www.youtube.com/watch?v=uoR4ilCWwKA&list=PLzMcBGfZo4-krMMJ2EPdVzsOCJDoe0K-I) ->  [Python Django Tutorial - techwithtim.net](techwithtim.net/tutorials/django/)
* [Python-100-Days_95.使用Django开发项目.md at master · jackfrued_Python-100-Days](https://github.com/jackfrued/Python-100-Days/blob/master/Day91-100/95.%E4%BD%BF%E7%94%A8Django%E5%BC%80%E5%8F%91%E9%A1%B9%E7%9B%AE.md) & RESTful

### Layout Django the right way

* [Structuring Your Project — The Hitchhiker's Guide to Python](https://docs.python-guide.org/writing/structure/)
* [pydanny_cookiecutter-django](https://github.com/pydanny/cookiecutter-django)_ Cookiecutter Django is a framework for jumpstarting production-ready Django projects quickly.
  * -> Google: Real python cookiecutter -> [Development and Deployment of Cookiecutter-Django via Docker – Real Python](https://realpython.com/development-and-deployment-of-cookiecutter-django-via-docker/)
  * -> Google: fullstack python Cookiecutter -> [The Top 39 Cookiecutter Open Source Projects](https://awesomeopensource.com/projects/cookiecutter) -> [Cookiecutter Django Vue](https://awesomeopensource.com/project/vchaptsev/cookiecutter-django-vue)
* Two scoops of Django
* [Starting a Django Project – Real Python](https://realpython.com/django-setup/)
* Template for starting Django projects
  * [DjangoX](https://github.com/wsvincent/djangox) - starter framework for new Django projects (an intro: [Introducing DjangoX - A new starter framework for Django](https://wsvincent.com/djangox-new-starter-framework/))
  * [DRFX](https://github.com/wsvincent/drfx) - starter framework for new Django REST Framework projects

### Best Practice

* 2019-10-18: Google: django best practices
  * [Django Applications — Django Best Practices](https://django-best-practices.readthedocs.io/en/latest/applications.html)
  * [Django Best Practices - William Vincent](https://wsvincent.com/django-best-practices/) = [Django 最佳实践 - FooFish-Python之禅](https://foofish.net/django-best-practice.html)
* 2019-10-18: Google Image: django best practices
* 2019-11-25: how django works

### Templates

* Google: django use template in another app -> [Get Started With Django Part 1 - Build a Portfolio App - Real Python](https://realpython.com/get-started-with-django-1/) shows a complete example to build a web site with multiple apps.

### Static Files

* [Managing static files (e.g. images, JavaScript, CSS) | Django documentation | Django](https://docs.djangoproject.com/en/2.2/howto/static-files/)
* Youtube: django static files - > [How to Use Django Static Files (Django Tutorial) | Part 5 - YouTube](https://www.youtube.com/watch?v=3ETQf3TQ9gc&list=PLw02n0FEB3E3VSHjyYMcFadtQORvl1Ssj&index=5)



### Database Migration

2019-10-14: After moving model class around, I get an error occurs during `python manage.py migrate`:

* Google: Related model 'mysite.Location' cannot be resolved -> [django - ValueError: Related model u'app.model' cannot be resolved - Stack Overflow](https://stackoverflow.com/questions/33496333/valueerror-related-model-uapp-model-cannot-be-resolved)Namespace / app_name

Try running migrations one by one for every model. This way you can debug the `app` you are facing problem with :

```python
python manage.py migrate location # that I delete class Location, and move it to mysite.
python manage.py migrate mysite   # that I move 2 classes in: Location, Status.
python manage.py migrate profiles # that it has models link to Location and Status.
```

2019-10-14: Should I commit migration files in repo?

* Google: django should i commit migration file -> [python - Should I be adding the Django migration files in the .gitignore file? - Stack Overflow](https://stackoverflow.com/questions/28035119/should-i-be-adding-the-django-migration-files-in-the-gitignore-file)

Even though I can re-gerenate migration in production via `python manage.py makemigrations`, it is better to commit them to version control in order to keep track of database schema changes (esp. having data in db).

in local ENV: it is OK to run `migrate`:

```python
python manage.py makemigrations 
python manage.py migrate
```

Now commit these newly created files, something like below.

```python
git add app/migrations/...
git commit -m 'add migration files' app/migrations/...
```

In PRODUCTION: it is better not run `makemigrations`: I should not run `makemigrations` in production at all. I can run `migrate` in production and you will see the migrations are applied from the  migration file that you committed from local. This way you can avoid all conflicts.

```python
python manage.py migrate
```

### Models

2019-10-14: *https://docs.djangoproject.com/en/2.2/ref/models/fields/* to see what can we do when define models.

2019-10-12: django 2 use model from another app. 

App `profile` doesn't see app `location`? (In app `profile`, there is a model class `Profile` having a ForeignKey `location`, which is defined in app `location`.)

```python
    "INSTALLED_APPS." % (module, name)
RuntimeError: Model class location.models.Location doesn't declare an explicit app_label and isn't in an application in INSTALLED_APPS.
```

It seems talking about namespace / app_name.

* Google: django namespace app_name -> [namespace vs app_name  r/django](https://www.reddit.com/r/django/comments/9qatau/namespace_vs_app_name/) ->  [Try DJANGO Tutorial - 35 - In App URLs and Namespacing - YouTube](https://www.youtube.com/watch?v=_B2yip40LFI&feature=youtu.be) (Django 2.2
* Google: django namespace app_name -> [Namespace error with Django 2.0   Treehouse Community](https://teamtreehouse.com/community/namespace-error-with-django-20)

So I define a `app_name` in "location\urls.py":

```python
app_name = "location"
```

But defines `app_name` doesn't help.

* Google: Model class location.models.Location doesn't declare an explicit app_label and isn't in an application in INSTALLED_APPS. -> [python - Django model "doesn't declare an explicit app_label" - Stack Overflow](https://stackoverflow.com/questions/40206569/django-model-doesnt-declare-an-explicit-app-label) -> [Fix weird exceptions when running Django tests - Michal Bock - Medium](https://medium.com/@michal.bock/fix-weird-exceptions-when-running-django-tests-f58def71b59a)

People claim that delete `__init__.py` helps, and [the article](https://medium.com/@michal.bock/fix-weird-exceptions-when-running-django-tests-f58def71b59a) shows that the bug is caused by `__ init__.py`. 

```
The reason why you get these exceptions is that you structured your admin and/or models as packages and imported the individual admin and/or model classes in their respective __init__.py files.
```

So, what's the correct way to use  `__ init__.py`?

* -> Google: python __ init__.py -> [Python 的 Import 陷阱 - PyLadies Taiwan - Medium](https://medium.com/pyladies-taiwan/python-的-import-陷阱-3538e74f57e3)

And we go back to the question: django 2 use model from another app.

And about the error message: `"INSTALLED_APPS." % (module, name) `

* Google:django "INSTALLED_APPS." % (module, name)  -> [Day7 : 探討 INSTALLED_APPS - iT 邦幫忙](https://ithelp.ithome.com.tw/articles/10200276) -> [From Django 1.11 to Django 2.1 :: 2019 iT 邦幫忙鐵人賽](https://ithelp.ithome.com.tw/users/20111829/ironman/1804)

OK, I find the answer finally: **I forget to register the app `location`** in `setting.py` + [correct understanding of Python package & module](https://medium.com/pyladies-taiwan/python-%E7%9A%84-import-%E9%99%B7%E9%98%B1-3538e74f57e3). What I need to do is 2 things:

```python
# revenue_engine/setting.py
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    ...
    'mysite',
    'profiles',
    'location',
]
```

```python
# revenue_engine/profiles/models.py
from django.db import models
...
from location.models import Location
# Create your models here.
```

`location.models` == package `location` has a module `models.py`  == folder `location` has a file `models.py`.

2019-10-23:  During models in app `jobs` up (5 models in `jobs` has FK to each other): Running `makemigrations` and `migrate` has no problems. when I run `python manage.py createsuperuser` , there is `django.db.utils.IntegrityError: FOREIGN KEY constraint failed` first and `django.db.utils.InternalError: (1060, "Duplicate column name 'created_by_id'")`  error later. (I have just created models in app `jobs`. )

Google: django.db.utils.IntegrityError: FOREIGN KEY constraint failed sqlite createsuperuser

* [实战：利用Django开发部署自己的个人博客（5）Django admin后台管理| 人生苦短 17python](www.17python.com/blog/57)

Google: django.db.utils.InternalError: (1060, "Duplicate column name

* -> [django数据库migrate失败的解决方法 | 卡瓦邦噶！](https://www.kawabangga.com/posts/1634) -> [Django中null和blank的区别 | 卡瓦邦噶！](https://www.kawabangga.com/posts/1810)
* [python - Duplicate column name - Stack Overflow](https://stackoverflow.com/questions/36016485/duplicate-column-name)

Since `makemigrations` is OK/no problems, than I can run `migrate` with `--fake` option:

```
python manage.py makemigrations
python manage.py migrate --fake
```

And then I can run `createsuperuser` with no problem.

### Django Custom User Model (2019-10-08)

Custom user model should be admin-compliant. Generally speaking, there are 4 different ways to extend the existing User model [#](https://simpleisbetterthancomplex.com/tutorial/2016/07/22/how-to-extend-django-user-model.html):

1. Using a Proxy Model
2. Using One-To-One Link with a User Model (UserProfile)
3. Creating a Custom User Model Extending AbstractBaseUser
4. Creating a Custom User Model Extending AbstractUser

>there is no *best solution*. It will really depend on what you need to achieve. Keep it simple and choose wisely.
>
>- **Proxy Model:** You are happy with everything Django User provide and don’t need to store extra information.
>- **User Profile:** You are happy with the way Django handles the auth and need to add some non-auth related attributes to the User.
>- **Custom User Model from AbstractBaseUser:** The way Django handles auth doesn’t fit your project.
>- **Custom User Model from AbstractUser:** The way Django handles auth is a perfect fit for your project but still you want to add extra attributes without having to create a separate Model.

* [Custom Django User Model _ DJANGO Tutorial - YouTube - CodingEntrepreneurs](https://www.youtube.com/watch?v=HshbjK1vDtY)
  * The Guide: [How to Create a Custom Django User Model | Post | Coding For Entrepreneurs](https://www.codingforentrepreneurs.com/blog/how-to-create-a-custom-django-user-model/) -> [Customizing authentication in Django | Django documentation | Django](https://docs.djangoproject.com/en/1.11/topics/auth/customizing/#a-full-example)
  * Repo:  [GitHub - codingforentrepreneurs_eCommerce: We're going to take you step-by-step to build a modern, fully open-source, eCommerce web application using Python, Django, Bootstrap, Javascript, and more](https://github.com/codingforentrepreneurs/eCommerce#custom-django-user-model)
* [Customizing authentication in Django | Django documentation | Django](https://docs.djangoproject.com/en/2.2/topics/auth/customizing/#a-full-example)
* Google: Django custom user model -> [Django: How to Extend The User Model (aka Custom User Model) - William Vincent](https://wsvincent.com/django-custom-user-model-tutorial/), and I take this.
* Google: Django custom user model -> [Django Tips #6: Custom User Model - William Vincent](https://wsvincent.com/django-tips-custom-user-model/)
* Google: Django custom user model -> [How to Extend Django User Model | Simple is Better Than Complex](https://simpleisbetterthancomplex.com/tutorial/2016/07/22/how-to-extend-django-user-model.html) - here are 4 different ways to extend the existing User model, ~~and I take the #2.~~ 
* Google: Django custom user model one-to-one -> Tango with Django
* Google: Django custom user model one-to-one -> [How to extend Django User model](https://www.pythonsetup.com/how-extend-django-user-model/)

Using a reference custom User model from  [How to Extend Django User Model | Simple is Better Than Complex](https://simpleisbetterthancomplex.com/tutorial/2016/07/22/how-to-extend-django-user-model.html), when I login to admin, there is `RelationObjectDoesNotExist` exception occurs. (I take the #2 User Model)

* Google: RelatedObjectDoesNotExist at /admin/login/ -> [I keep getting RelatedObjectDoesNotExist at _admin_login_. How do I successfully create user profiles in Django via a one to one relationship? - Stack Overflow](https://stackoverflow.com/questions/52244032/i-keep-getting-relatedobjectdoesnotexist-at-admin-login-how-do-i-successfully/52244197)

> If you define a `OneToOneField` that does *not* mean that every object of the targeted model contains an object from the referencing model. A `OneToOneField` in essence is a `ForeignKey` with a `unique=True` (and some extra logic to do proper naming).
>
> Here it thus means that although every `Profile` has a related user, *not* every user has a `Profile`. It is possible that there are `User`s for which *no* `Profile` exists.
>
> If you thus query `some_user.profile` there are two scenario's that can unfold:
>
> 1. there is a related `Profile` object that is the fetched, and returned; or
> 2. there is no such object, and then it raises a `RelatedObjectDoesNotExist` error.
>
> There have been some proposals to return `None` in the latter case, but due to *backwards* compatibility, this will probably not be implemented in the (near) future, or implemented at all.
>
> So you probably have a user for which there is no profile. Based on the full traceback, the error happens on the line `instance.profile.save()`. We can fix this by creating a profile in case there is no such profile:
>
> ```python
> from django.core.exceptions import ObjectDoesNotExist
> 
> @receiver(post_save, sender=User)
> def create_user_profile(sender, instance, created, **kwargs):
>     try:
>         instance.profile.save()
>     except ObjectDoesNotExist:
>         Profile.objects.create(user=instance)
> ```
>
> We thus check if the `instance` has a `.profile` that leads to a `Profile` object. In case it has not, it will raise an exception, and then we create one.
>
> This is also more in the **E**asier to **A**sk **F**orgiveness than **P**ermission (EAFP) spirit of Django.

### Class Based Views (2019-10-03)

* 2019-10-11: [基于类的视图 | Django 文档 | Django](https://docs.djangoproject.com/zh-hans/2.2/topics/class-based-views/intro/)
* 2019-10-11: [A Complete Beginner's Guide to Django - Part 6](https://simpleisbetterthancomplex.com/series/2017/10/09/a-complete-beginners-guide-to-django-part-6.html) :When working with GCBV, it’s always good to have the [ccbv.co.uk](https://ccbv.co.uk/) opened for quick reference.
* 2019-10-29: Google:django CreateView example -> https://www.agiliq.com/blog/2019/01/django-createview/
* 2019-10-03: [Class Based Views   Projects   Coding For Entrepreneurs](https://www.codingforentrepreneurs.com/projects/class-based-views) -> https://github.com/codingforentrepreneurs/Class-Based-Views
* 2019-10-10: (Google: django custom user model one-to-one ->[How to extend Django User model](https://www.pythonsetup.com/how-extend-django-user-model/) -> Google: FormView -> Google: FormView django ->  https://docs.djangoproject.com/en/2.2/ref/class-based-views/generic-editing/ -> https://docs.djangoproject.com/zh-hans/2.2/topics/class-based-views/intro/ -> ) [Introduction to class-based views | Django documentation | Django](https://docs.djangoproject.com/en/2.2/topics/class-based-views/intro/) -> Google: Ancestors (MRO) -> [Django Tutorial for Programmers: 19. Class-based Views - iT 邦幫忙](https://ithelp.ithome.com.tw/articles/10160356) -> **[Django Class-Based-View Inspector -- Classy CBV](http://ccbv.co.uk)**
* 2019-10-10: Ancestors (MRO) -> (Method Resolution Order, MRO) (方法解析顺序)
* 2019-10-10: Google: class based view -> [Django : Class Based Views vs Function Based Views - Sarthak Kumar - Medium](https://medium.com/@ksarthak4ever/django-class-based-views-vs-function-based-view-e74b47b2e41b)

### Settings (static files, media, etc) (2019-09-30)

* Google: what can I do in Django settings -> [Django by errors - a different Django tutorial — Django by errors 0.2 documentation](https://django-by-errors.readthedocs.io/en/latest/)
* Google: what can I do in Django settings -> [Top 10 Django Mistakes _ Toptal](https://www.toptal.com/django/django-top-10-mistakes)



### L18N

* 2019-11-02: Google:django tw ->[埋坑  Django 多國語言 - Lililala - Medium][](https://medium.com/@lililala/埋坑實驗室-django-多國語言-ef73f359332e) -> [埋坑  Django 整合 reCAPTCHA v3 - Lililala - Medium](https://medium.com/@lililala/埋坑-django-整合-recaptcha-v3-bef06d89c33a)

### Send email / Mailing / Mailer

* Google:PHPMailer send attachment -> [Tutorial · PHPMailer_PHPMailer Wiki.html](https://github.com/PHPMailer/PHPMailer/wiki/Tutorial)

* Google:django mailer -> https://djangopackages.org/packages/p/django-mailer/ -> https://github.com/pinax/django-mailer

### Follow Django examples

* 七夜的 CoolBlog [CoolBlog开发笔记 － 小专栏](https://xiaozhuanlan.com/coolblog)
* [tuot](https://github.com/tuot) / [django-blog-tutorial](https://github.com/tuot/django-blog-tutorial)
* https://github.com/topics/django -> https://github.com/liangliangyy/DjangoBlog
* HelloGitHub 微信公众号 -> HelloDjango https://github.com/HelloGitHub-Team/HelloDjango-blog-tutorial
  * [是时候让大家看看你用django写出来的博客了（内含部署教程视频） - 知乎](https://zhuanlan.zhihu.com/p/83276930)
* [GitHub标星8100：Python中文资源，从新手到老司机，只要100天量子位量子位](https://zhuanlan.zhihu.com/p/64462281) -> [https://github.com/jackfrued](jackfrued) / [Python-100-Days](https://github.com/jackfrued/Python-100-Days)

### 3rd party

* Work flow / business logic
  * Google:django workflow -> https://djangopackages.org/grids/g/workflow/ -> https://github.com/viewflow/viewflow, http://viewflow.io/
* Task Queue
  * 

## Awesome Resource for Django

- [Awesome Django](https://github.com/wsvincent/awesome-django) - curated list of awesome Django resources
- ~~[DjangoX](https://github.com/wsvincent/djangox) - starter framework for new Django projects~~
- ~~[DRFX](https://github.com/wsvincent/drfx) - starter framework for new Django REST Framework projects~~
- [SQLjs](https://sqljs.org/) - online SQL interpreter
- [HTML Escape Tool](https://wsvincent.com/htmlescapetool/) - automatically escape/unescape HTML code

### Resources

Google, github, YouTube 

* https://code.djangoproject.com/wiki/Tutorials

* https://twoscoopspress.com/pages/django-tutorials

* https://www.twoscoopspress.com/pages/current-django-books

* https://wsvincent.com/best-django-books/

* [About - William Vincent](https://wsvincent.com/about/)

* Code Standand
  
  * [PEP 8 -- Style Guide for Python Code _ Python.org](https://www.python.org/dev/peps/pep-0008/)
  * 2019-11-22: [PEP 8  The Style Guide for Python Code.html](https://pep8.org) by [Kenneth Reitz](http://kennethreitz.org/bitcoin) (for humans)
  * Google: -> instagram pycon 2017 -> [Instagram 在 PyCon 2017 的演讲摘要 _ Piglei](https://www.zlovezl.cn/articles/instagram-pycon-2017/) (-> [piglei_one-python-craftsman_ 来自一位 Pythonista 的编程经验分享，内容涵盖编码技巧、最佳实践与思维模式等方面。](https://github.com/piglei/one-python-craftsman) ) -> [关于我 Piglei](https://www.zlovezl.cn/about/):友情链接 -> [Python 代码规范小结](http://wklken.me/posts/2016/11/03/python-code-style.html)
  
* Cheatsheet
  
  * Python CheatSheet
  * Django CheatSheet
  * PHP CheatSheet
  * Django Girls
  * Books by Aqiliq https://books.agiliq.com/en/latest/
  * [Django for Beginners / APIs / Professionals](https://wsvincent.com/books/) = https://wsvincent.com/ = https://djangochat.com
  * Google: -> instagram pycon 2017 -> [Instagram 在 PyCon 2017 的演讲摘要 _ Piglei](https://www.zlovezl.cn/articles/instagram-pycon-2017/) -> [piglei_one-python-craftsman_ 来自一位 Pythonista 的编程经验分享，内容涵盖编码技巧、最佳实践与思维模式等方面。](https://github.com/piglei/one-python-craftsman)
  * 2019-11-22: Google: python rename -> Google: python3 遍历重命名文件 -> [13.9 通过文件名查找文件 — python3-cookbook 3.0.0 文档](https://python3-cookbook.readthedocs.io/zh_CN/latest/c13/p09_find_files_by_name.html)
  * Google: bash ctrl-a -> [bash keyboard shortcuts - Linux - SS64.com](https://ss64.com/bash/syntax-keyboard.html)
  * Google: f-string -> [Python之美 - 知乎](https://zhuanlan.zhihu.com/python-cn)
  
* Package Manager & Virtual Environment
  
  * [12. Virtual Environments and Packages — Python 3.8.0 documentation](https://docs.python.org/3/tutorial/venv.html)
  
  * virtualenv/venv: 2019-11-25: [要不我们还是用回 virtualenv_venv 和 pip 吧 - 知乎](https://zhuanlan.zhihu.com/p/81568689), [相比 Pipenv，Poetry 是一个更好的选择 - 知乎](https://zhuanlan.zhihu.com/p/81025311)
  
  * virtualenv: 2019-11-25: [Pipenv & Virtual Environments — The Hitchhiker's Guide to Python](https://docs.python-guide.org/dev/virtualenvs/) =  [Pipenv & 虚拟环境 — The Hitchhiker's Guide to Python](https://pythonguidecn.readthedocs.io/zh/latest/dev/virtualenvs.html)
  
  * pipenv: 2019-11-22: [也谈「不要用 Pipenv」 - 知乎](https://zhuanlan.zhihu.com/p/80683249), 2019-11-25: [PyCon 2018 之 Python 未来的依赖管理工具 pipenv - 知乎](https://zhuanlan.zhihu.com/p/37172569)
  
  * pipenv: 2019-11-25: [相比 Pipenv，Poetry 是一个更好的选择 - 知乎](https://zhuanlan.zhihu.com/p/81025311)
  
    
  
* Version control
  
  * [独立电子书-图灵社区](www.ituring.com.cn/tag/3629) -> [这『六本』电子书助你成为顶尖程序员（含下载地址）-图灵社区](www.ituring.com.cn/article/497491) -> Google: GitHub 漫游指南 -> [GitHub 漫游指南 – GitHub 漫游指南](https://github.phodal.com), [phodal_github  GitHub 漫游指南- a Chinese ebook on how to build a good project on Github.](https://github.com/phodal/github) 
  * [独立电子书-图灵社区](www.ituring.com.cn/tag/3629) -> [这『六本』电子书助你成为顶尖程序员（含下载地址）-图灵社区](www.ituring.com.cn/article/497491) -> Google: GitHub 漫游指南 -> [GitHub 漫游指南 – GitHub 漫游指南](https://github.phodal.com) -> [phodal_fe  《我的职业是前端工程师》 - Ebook：I'm a FrontEnd Developer](https://github.com/phodal/fe)
  
* Dockerization
  
  * Youtube: django docker
  
* Data
  * SQLite client:
    * DB Browser for SQLite
  
* Template / Front-end Framework
  * Gentelella
  * [Github上 10 个开源免费且优秀的后台控制面板（接私活必备哦） - 知乎](https://zhuanlan.zhihu.com/p/83311408)
  * https://github.com/topics/dashboard
  * https://github.com/topics/admin-dashboard
  
* UML graph
  * 2019-10-13: PlantUML (from GitChat)
  * 2019-10-13: Graphviz
  * 2019-10-13: Google: Graphviz uml -> DotUML https://dotuml.com/
  * 2019-10-18: draw.io as techwithtim
  
* Code Analysis
  
  * php code analytic -> php code analysis -> php code graph -> php call graph
  
* Tooling
  * Package. Google: gentelella-admin -> Google: gentelella bootstrap 4 -> https://stackshare.io/stackups/bootstrap-vs-gentelella by Stackshare - Software and technology stacks used by top companies
  * Package. Google: gentelella-admin -> Google: gentelella bootstrap 4 -> Google: bootstrap 4 admin template -> [20 Free Bootstrap Admin & Dashboard Templates for 2019](https://speckyboy.com/free-bootstrap-admin-themes/)
  * Package. Google: django bootstrap4 -> [How to Use Bootstrap 4 Forms With Django - Simple is Better Than Complex](https://simpleisbetterthancomplex.com/tutorial/2018/08/13/how-to-use-bootstrap-4-forms-with-django.html)
  * Package. django-crispy-forms.
  * Package. 2019-11-18: [Django Chat Podcast](https://djangochat.com/episodes) - episode 40 -> https://github.com/wsvincent/awesome-django -> [kennethlove - django-shapeshifter: A CBV to handle multiple forms in one view](https://github.com/kennethlove/django-shapeshifter)
  * Package. 2019-10-24: Google:django should I create updated by -> https://django-simple-history.readthedocs.io/en/latest/
  * Package. 2019-11-21: PyCoder’s Weekly [Issue #395](https://pycoders.com/issues/395) [viewflow: Reusable Workflow Library for Django](https://pycoders.com/link/2947/ua2fujrqqx) -> [GITHUB.COM/VIEWFLOW](https://pycoders.com/link/2947/ua2fujrqqx)
  * Package. 2019-11-21: PyCoder’s Weekly [Issue #395](https://pycoders.com/issues/395) [viewflow: Reusable Workflow Library for Django](https://pycoders.com/link/2947/ua2fujrqqx) ->  [django-fsm: Friendly Finite State Machines for Django](https://pycoders.com/link/2951/ua2fujrqqx)
    [GITHUB.COM/VIEWFLOW](https://pycoders.com/link/2951/ua2fujrqqx)
  * Package. 2019-11-21: PyCoder’s Weekly [Issue #395](https://pycoders.com/issues/395) [viewflow: Reusable Workflow Library for Django](https://pycoders.com/link/2947/ua2fujrqqx) ->  [django-river: Django Workflow Library](https://pycoders.com/link/2930/ua2fujrqqx)
    [GITHUB.COM/JAVRASYA](https://pycoders.com/link/2930/ua2fujrqqx)

## Guide on Building with Flask

Tutorial in prototyping with Flask

* Google: flask tutorial -> [Flask - Full Stack Python](https://www.fullstackpython.com/flask.html)
* Google: cookiecutter -> [Python cookiecutter-flask，如何在几分钟内启动一个像模像样的网站[视频] - 知乎](https://zhuanlan.zhihu.com/p/46764192)



## Guide on Frontend

* <https://github.com/Microsoft/frontend-bootcamp>
* Front-end Developer Handbook by FrontendMasters, (from Ricky: https://legacy.gitbook.com/book/frontendmasters/front-end-handbook-2017/details -> Google: Front-end Developer Handbook -> https://github.com/FrontendMasters/front-end-handbook-2019 = https://frontendmasters.com/books/front-end-handbook/2019/ -> https://frontendmasters.com/books/)
* [Web Development In 2019 - A Practical Guide - YouTube](https://www.youtube.com/watch?v=UnTQVlqmDQ0)
* **JavaScript 30** — Build 30 things with vanilla JS in 30 days with 30 tutorials https://javascript30.com/
* 2020-06-04: Google: fullstack python -> fullstack node -> fullstack typescript -> fullstack react -> fullstack vue ->[Fullstack Node.js- The Complete Guide to Building Production Apps with Node.js - # Learn to build production Node.js apps](https://www.newline.co/fullstack-nodejs), [newline - Learn to program React, Angular, Vue, Ethereum, and Node.js with projects](https://www.newline.co/) -> [**30 Days of Vue -- newline**](https://www.newline.co/30-days-of-vue)
* [Bootstrap Basics   Projects   Coding For Entrepreneurs](https://www.codingforentrepreneurs.com/projects/bootstrap-basics-v4-3) -> https://github.com/codingforentrepreneurs/Bootstrap-Basics-v4
* [Git小书-图书-图灵社区](www.ituring.com.cn/book/1870) -> [1000copy的文章-图灵社区](www.ituring.com.cn/space/190105) -> [《bootstrap小书》免费上线。节省时间快速学习bootstrap框架的利器-图灵社区](www.ituring.com.cn/article/272595) -> [bootstrap小书 · GitBook (Legacy)](https://legacy.gitbook.com/book/1000copy/bootstrap/details)
* [Meathill](https://gitbook.cn/gitchat/author/593cb520ef8d9c2863173543)  - [用 Vue 改造 Bootstrap，渐进提升项目框架](https://gitbook.cn/gitchat/activity/5965a43ed5ef4527af6ee740)
* PyCoder's Weekly Issue [#362](https://pycoders.com/issues/362) (April 2, 2019) -> [Useful Django Packages in 2019](https://vsupalov.com/favorite-django-packages-2019/) -> [When and Why Would I Need a JS Framework for Django?](https://vsupalov.com/when-and-why-js-framework-for-django/)
* PyCoder's Weekly Issue [#362](https://pycoders.com/issues/362) (April 2, 2019) -> [Useful Django Packages in 2019](https://vsupalov.com/favorite-django-packages-2019/) ->  [How Does the Frontend Communicate with the Backend?](https://vsupalov.com/how-backend-and-frontend-communicate/)
* [The 2019 UI Design Crash Course for Beginners - YouTube](https://www.youtube.com/watch?v=_Hp_dI0DzY4)
* [The 2019 Frontend Developer Crash Course - HTML & CSS Tutorial for Beginners - YouTube](https://www.youtube.com/watch?v=8gNrZ4lAnAw)
* [How to Make a Custom Website from Scratch using WordPress (Theme Development) - 2019 Tutorial - YouTube](https://www.youtube.com/watch?v=KibbYf9avko)
* 2020-06-04: Google: fullstack python -> fullstack node ->  fullstack typescript ->  fullstack react -> fullstack vue -> [Vue.js - Full Stack Python](https://www.fullstackpython.com/vuejs.html)
  * [flask-vue-spa](https://github.com/oleg-agapov/flask-vue-spa) is an example project with a [Flask](https://www.fullstackpython.com/flask.html) API on the backend and Vue on the front.
  * [Developing a Single Page App with Flask and Vue.js](https://testdriven.io/blog/developing-a-single-page-app-with-flask-and-vuejs/) walks through all of the environment configuration, project setup and coding you need to do to build a legitimate Vue.js application that uses a [Flask](https://www.fullstackpython.com/flask.html) API on the backend.
  * [Building Modern Applications with Django and Vue.js](https://auth0.com/blog/building-modern-applications-with-django-and-vuejs/) combines [Django](https://www.fullstackpython.com/django.html),
    [Django REST Framework](https://www.fullstackpython.com/django-rest-framework-drf.html), Vue.js and [Auth0](https://auth0.com/) (an authentication web [API](https://www.fullstackpython.com/application-programming-interfaces.html)) in an introductory web application.
* [我如何使用 Django + Vue.js 快速构建项目](https://zhuanlan.zhihu.com/p/25080236)
* [我如何使用 Django + Vue.js 快速构建项目](https://zhuanlan.zhihu.com/p/24893786) -> Source code: <https://github.com/tmpbook/django-with-vuejs>
* Django-bootstrap4
  * Google: django bootstrap4 -> [How to Use Bootstrap 4 Forms With Django - Simple is Better Than Complex](https://simpleisbetterthancomplex.com/tutorial/2018/08/13/how-to-use-bootstrap-4-forms-with-django.html) -> [Series](https://simpleisbetterthancomplex.com/series/) -> [A Complete Beginner's Guide to Django](https://simpleisbetterthancomplex.com/series/beginners-guide/1.11/)
  * Google: django bootstrap教學 -> [想用Django+ Bootstrap写一个网站， 有哪些比较系统完整的书或者视频可以参考？ - 知乎](https://www.zhihu.com/question/29804463)

## Guide on Vue.js

* Google: how to learn vue.js -> [How do I learn Vue.js_ - Quora](https://www.quora.com/How-do-I-learn-Vue-js)
* Google: vue -> [Vue JS Crash Course - 2019 - YouTube](https://www.youtube.com/watch?v=Wy9q22isx3U)
* [Learn Vue.js - Full Course for Beginners - 2019 freeCodeCamp.org - YouTube](https://www.youtube.com/watch?v=4deVCNJq3qc)
* [Vue.js 2.0 In 60 Minutes - YouTube](https://www.youtube.com/watch?v=z6hQqgvGI4Y)
* Ralph [Vue.js 30天 - iT 邦幫忙::一起幫忙解決難題，拯救IT 人的一天 - iThome](https://ithelp.ithome.com.tw/users/20103424/ironman/1049)
* [白宦成](https://gitbook.cn/gitchat/author/58e484f5cfcd6fa52dceeadc) - [给后端程序员看的 Vue 快速入门教程](https://gitbook.cn/gitchat/activity/5c75b7bfb7bb4906f36f2c15)

## Guide on Data Visualization 

* [Data Visualization with Vue JS - YouTube](https://www.youtube.com/watch?v=30v9xnB-GEo)

Youtube

* [The 2019 UI Design Crash Course for Beginners - YouTube](https://www.youtube.com/watch?v=_Hp_dI0DzY4)
* [The 2019 Frontend Developer Crash Course - HTML & CSS Tutorial for Beginners - YouTube](https://www.youtube.com/watch?v=8gNrZ4lAnAw)
* [How to Make a Custom Website from Scratch using WordPress (Theme Development) - 2019 Tutorial - YouTube](https://www.youtube.com/watch?v=KibbYf9avko)
* Google: vue -> [Vue JS Crash Course - 2019 - YouTube](https://www.youtube.com/watch?v=Wy9q22isx3U)
* [Python - Intro to Computer Science - Harvard's CS50 (2018) - YouTube](https://www.youtube.com/watch?v=hnDU1G9hWqU)
* [Learn Vue.js - Full Course for Beginners - 2019 - YouTube](https://www.youtube.com/watch?v=4deVCNJq3qc)
* [Make Money with Tensorflow 2.0 - YouTube](https://www.youtube.com/watch?v=WS9Nckd2kq0)



TODO: read them

* https://zhuanlan.zhihu.com/p/36144451
* https://zhuanlan.zhihu.com/p/35947009
* [详解用 Python 访问金融交易数据的方法](https://gitbook.cn/gitchat/activity/5d22b3cb3262a07ed954d597)

Tooling - SQL client

* Sqlite



Tooling - GIT

* [大妈 Zoom.Quiet](https://gitbook.cn/gitchat/author/585c8234437718010567174f) - [ GitQ: GitHub 入味儿](https://gitbook.cn/gitchat/column/59c1e37c987dbf24338e7df3)
* [Fengy](https://gitbook.cn/gitchat/author/59e08d7ee7cadd1001a33cf7) - [1小时搞懂 Git 版本控制](https://gitbook.cn/gitchat/activity/5bb88acc3b8181150e6abb93)
* [让你一场 Chat 学会 Git](https://gitbook.cn/gitchat/activity/5a15369a0cd3313c8ab46f52?refresh=true)
* [Git 扫盲：用命令行剖析 Git 使用](https://gitbook.cn/gitchat/activity/5ca34a1f0ec7201a4f7dc3b4)

## 提升效率 (提升, 效率, 效能)

* [大妈 Zoom.Quiet](https://gitbook.cn/gitchat/author/585c8234437718010567174f) - [如何在繁重工作间隙保持良好的自学节奏和效能?](https://gitbook.cn/gitchat/activity/5c5004823101e4757729ad39)
* [如何半小时搞定 3 小时的工作&漫谈极速提升开发效率](https://gitbook.cn/gitchat/activity/5bb3857c73ee7410d38f15da?refresh=true) - Vim, bash, typing, [标准指法](https://baike.baidu.com/item/标准指法/10230098), etc
* [郭方超](https://gitbook.cn/gitchat/author/5a4d99e21037756c47ed8429) - [流式编程：让页面飞起来](https://gitbook.cn/gitchat/activity/5cb89a161e0bb053f3dd68b1)
* [BinaryCoding](https://gitbook.cn/gitchat/author/590dacd46c62765b17cf9821) - [Mac 打造高效工作流](https://gitbook.cn/gitchat/activity/5cb6ee2b9fecef6eb63bf41d)
* [打造高效「Mac 工具栈」，提高工作效率](https://gitbook.cn/gitchat/activity/5c83aac7d3d49f2dbb3b2185)
* [白宦成](https://gitbook.cn/gitchat/author/58e484f5cfcd6fa52dceeadc) - [职场高效率：用印象笔记来提升你的工作效率](https://gitbook.cn/gitchat/activity/59bc13ed027bc77b77d7d566)
* [白宦成](https://gitbook.cn/gitchat/author/58e484f5cfcd6fa52dceeadc) - [给后端程序员看的 Vue 快速入门教程](https://gitbook.cn/gitchat/activity/5c75b7bfb7bb4906f36f2c15)
* [效率为王：终端管理工具 Tmux ](https://gitbook.cn/gitchat/activity/5a2df3cdc9cd261a373bc88f)

## Guide on Deploying Django

* from [PyCoder's Weekly #376](https://pycoders.com/issues/376) ->  [Deploying Django to Heroku With Docker](https://pycoders.com/link/1957/ua2fujrqqx) (This post looks at how to deploy a Django app to Heroku with Docker via the Heroku Container Runtime.)
* 2019-11-25: [Django腾讯云部署教程：+Ubuntu+Django2+Python3+Nginx+Uwsgi - 知乎](https://zhuanlan.zhihu.com/p/63038112)
* 2019-11-25: [是时候让大家看看你用django写出来的博客了（内含部署教程视频） - 知乎](https://zhuanlan.zhihu.com/p/83276930)

## Something interesting

* [r/django](https://www.reddit.com/r/django/)
* YouTube: raspberry pi
* YouTube: raspberry pi docker
* YouTube: raspberry pi django
* YouTube: raspberry pi syncthing
* Google: Django DRF
* Google: restful design
* API Star: [API Star：一个 Python 3 的 API 框架 - 知乎](https://zhuanlan.zhihu.com/p/44110530) is a restful api framework
* YouTube: Django to Vue
* [REST API concepts and examples - YouTube](https://www.youtube.com/watch?v=7YcW25PHnAA)
* [RESTful API 最佳实践](https://gitbook.cn/gitchat/activity/5c7f8f55d51fb17721b11847)
* [Passive Income  How I make $40,000_year doing nothing (software engineer edition) - YouTube](https://www.youtube.com/watch?v=u4oMEljRzBY)
* [白宦成](https://gitbook.cn/gitchat/author/58e484f5cfcd6fa52dceeadc) - [被动收入 101 ：使用云开发和 Taro 开发一个小程序](https://gitbook.cn/gitchat/activity/5d2f00533f494f7a15dc8c97)
* [一篇文章赚 8 万的 14 个技巧](https://gitbook.cn/gitchat/activity/5cde01842a6f4b1a75fc3a2e)
* [程序员副业赚钱的 8 种模式](https://gitbook.cn/gitchat/activity/5cdfe5686a30bd605ba31113)

### 中文手册 / 入门指南

* http://www.pythondoc.com/pythontutorial3/
* https://www.bootcss.com/
* https://docs.pythontab.com/
* Books by Aqiliq https://books.agiliq.com/en/latest/
* [Python 工匠：容器的门道 - 知乎](https://zhuanlan.zhihu.com/p/55563125)

----

Tech note

2019-10-22: To load .sql file into MySQL:

```bash
root@aaron-300V3A:/home/aaron/Syncthing/Sites4/Python/revenue-engine/utilities# mysql -u root itcs_dev < itcsdev.v1.0.1.sql
```

Google: mysql how to load .sql file -> [command line - How to run SQL script in MySQL? - Stack Overflow](https://stackoverflow.com/questions/8940230/how-to-run-sql-script-in-mysql)

> - use the MySQL command line client: `mysql -h hostname -u user database < path/to/test.sql`
> - Install the MySQL GUI tools and open your SQL file, then execute it
> - Use phpmysql if the database is available via your webserver

--

Or, try to run it via script:

> commit b4a89fbc3f3d230a5de18712e08aad0f74610148
> Author: ringk-itcs <56421115+ringk-itcs@users.noreply.github.com>
> Date:   Mon Oct 21 15:49:28 2019 +0800
>
>     MySQL Database Population scripts
>    
>     1) itcsdev_drop_tables.sql --- Drop all Website related tables (excl.  Django Tables)
>     2) itcsdev.v1.0.1.sql --- Create tables/objects and insert rows
>     3) MySQL_load_sql_file.sh --- Shell wrapper to run the above scripts.
>    
>     su - adminitcs
>     cd <your_local_root>/revenue-engine/utlities
>     . ./MySQL_load_sql_file.sh itcsdev_drop_tables.sql    #--- Password is same as /etc/mysql/revengine.cnf
>     . ./MySQL_load_sql_file.sh itcsdev.v1.0.1.sql               #--- Password is same as /etc/mysql/revengine.cnf

--

2019-10-23:

Q: `django.db.utils.IntegrityError: FOREIGN KEY constraint failed` during `python manage.py migrate`.

Google: django.db.utils.IntegrityError: FOREIGN KEY constraint failed
* [python – 使用ForeignKey,NON NULL约束失败 - 代码日志](https://codeday.me/bug/20190320/789799.html) -> [Foreign key, null=True error : django](https://www.reddit.com/r/django/comments/2ricny/foreign_key_nulltrue_error/)

--

2019-10-23:

Once Models are up, we can use the Django admin *application* can use your models to automatically build a site area that you can use to create, view, update, and delete records.

```python
# admin.py
from django.contrib import admin

# Register your models here.
from catalog.models import Author, Genre, Book, BookInstance

admin.site.register(Book)
admin.site.register(Author)
admin.site.register(Genre)
admin.site.register(BookInstance)
```

To change how a model is displayed in the admin interface you define a [ModelAdmin](https://docs.djangoproject.com/en/dev/ref/contrib/admin/#modeladmin-objects) class (which describes the layout) and register it with the model.

```python
# Define the admin class
class BookAdmin(admin.ModelAdmin):
    pass

# Register the admin class with the associated model
admin.site.register(Book, BookAdmin)
```

And instead, we will use the `@register` decorator to register the models (this does exactly the same thing as the `admin.site.register()` syntax):

```python
# Register the Admin classes for Book using the decorator
@admin.register(Book)
class BookAdmin(admin.ModelAdmin):
    pass

# Register the Admin classes for BookInstance using the decorator
@admin.register(BookInstance) 
class BookInstanceAdmin(admin.ModelAdmin):
    pass
```

Further, we can configure list views  by using [list_display](https://docs.djangoproject.com/en/dev/ref/contrib/admin/#django.contrib.admin.ModelAdmin.list_display) to add additional fields to the view. 

```python
class BookAdmin(admin.ModelAdmin):
    list_display = ('title', 'author', 'display_genre')
```

Google:django admin usage

*  [Django Tutorial Part 4: Django admin site - Learn web development | MDN](https //developer.mozilla.org/en-us/docs/web/css/padding) for further configure.

----

### New to PHP: Starting RAM locally  (XAMPP)

2019-07-24: As I am new to PHP (from Python), there is some questions about developing in PHP:

Google: php development on mac

Google: python virtual environment -> Google: php virtual environment

Q: 2019-07-26: What if I running PHP on docker?  (Just like [running Wordpress on Docker](https://docs.docker.com/compose/wordpress/)) -> Google: wamp docker -> [Devilbox](http://devilbox.org/) (is a modern and highly customizable **dockerized PHP stack** supporting full **LAMP** and **MEAN** and running on all major platforms.)

----

##### New to MacOS

2019-07-25: As I am new to Mac, there is some questions about using Mac & install software on Mac:

Google: what software to install on a new Mac

Google: homebrew

Google: where should syncthing located on Mac

Google: zhihu mac

----

### Questions:

./database/Tables and Relational Schema.png

* About DB design: Could you explain the entities of "Status":
  * `ScheduleStatus`
  * `SettingsStatus`
  * `AccountStatus`

./mvc

* Are we using popular MVC framework (Code Igniter / CakePHP / Laravel, etc), or are we writing ourselves tidy MVC framework?



### Target 

1. Current: Help to develop Project-Beaver.
2. Current: Concern about performance issue (esp. on update schedule).
3. Future: Possibly shift the backend of Project-Beaver to Django framework.
4. Future: Implement Project-Beaver with Vue.js.

### Plan / Approach

##### Stage 1

Aaron setup a local WAMP server to execute Project-Beaver on.

Aaron ignore the frontend side (esp. JavaScript) and focus on backend side:

Understand how Project-Beaver internal works.

Study on Django web framework and make a simple site as a demo for technical review (for Ricky.) -> 

Study on JavaScript (I have no frontend background) -> Reading a book titled "Headfirst JavaScript Programming".

##### Stage 2

Aaron try to understand how the frontend components in Project-Beaver works.



### Infrastructure

- [ ] Version control
- [ ] Python package dependency
- [ ] Database schema control (a.k.a. Database migration)
- [ ] Theme hirecature
- [ ] Theme:
  - [ ] Use of Bootstrap 4
- [ ] Localization
  - [ ] Time zone
  - [ ] I18N
  - [ ] L10N
- [ ] Sub-system: Learning_logs (~ blogging)
  - [ ] Topic
  - [ ] Entry
- [ ] Sub-system: Users system (membership)
  - [ ] Login
  - [ ] Logout
  - [ ] Registration
  - [ ] Login required (a.k.a. Page protection / Page restriction)
  - [ ] Extending Django's user object
- [ ] API-ify
  - [ ] Data exchange with frontend (e.g. with Vue.js)
  - [ ] Frontend-backend decoupling (e.g. use Django Restful: DRF)

### Approach



### Setup (2019-09)

Install python 3.7

```bash
sudo apt install python3.7
```

Setup virtual env for Django

```bash
python3.7 -m venv django-revenue-env
source django-revenue-env/bin/activate
```

Install Django in virtual env. (Django version>=2.1)

```bash
python -m pip install django>=2.1
```

or, update requirements.txt and then install packages from it on other machines [#](https://pip.pypa.io/en/stable/user_guide/#installing-packages)

```bash
python -m pip freeze > requirements.txt
python -m pip -r requirements.txt
```

(Remark: Use `brew` instead of `apt` on Mac. )

Run test server

```bash
python manage.py runserver
```





----

### About Django 3.0 (2020-05)

* [Django3.0 异步功能尝鲜](https://zhuanlan.zhihu.com/p/97149294)
* [如何借助 Django 来编写一个 Python Web API](https://zhuanlan.zhihu.com/p/102269279)
* https://fastapi.tiangolo.com/



----


