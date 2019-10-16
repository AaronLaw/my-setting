2014-04-26：
在 Rails 中，table 是以眾回彖的形式存在，並且在 "rails g model" 的時候，會自動產生 "created_at" 和 "updated_at" 兩個 columns。在 Django 中並沒有這些 convention，要如何做得到呢？

看了 Models::Model Meta options 和 Models::Model field reference，我就以 The Django Book
中 Chapter 5: Models 的例子來示範：
    class Publisher(models.Model):
        name = models.CharField(max_length=30)
        address = models.CharField(max_length=50)
        city = models.CharField(max_length=60)
        state_province = models.CharField(max_length=30)
        country = models.CharField(max_length=50)
        website = models.URLField()
    
    class Author(models.Model):
        first_name = models.CharField(max_length=30)
        last_name = models.CharField(max_length=40)
        email = models.EmailField()
    
    class Book(models.Model):
        title = models.CharField(max_length=100)
        authors = models.ManyToManyField(Author)
        publisher = models.ForeignKey(Publisher)
        publication_date = models.DateField()

加上 Meta class 和自己加上 created_at ，updated_at，並加入 auto_now：
    
    class Publisher(models.Model):
        name = models.CharField(max_length=30)
        address = models.CharField(max_length=50)
        city = models.CharField(max_length=60)
        state_province = models.CharField(max_length=30)
        country = models.CharField(max_length=50)
        website = models.URLField()
        class Meta:
            db_table = 'publishers'
            ordering = ['name']

    class Author(models.Model):
        first_name = models.CharField(max_length=30)
        last_name = models.CharField(max_length=40)
        email = models.EmailField()
        created_at = models.DateTimeField(auto_now_add = True)
        updated_at = models.DateTimeField(auto_now = True)
        class Meta:
            db_table = 'authors'

    class Book(models.Model):
        title = models.CharField(max_length=100)
        authors = models.ManyToManyField(Author)
        publisher = models.ForeignKey(Publisher)
        publication_date = models.DateField()
        class Meta:
            db_table = 'books'

