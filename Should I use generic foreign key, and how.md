Should I use generic foreign key, and how?

django-users@googlegroups.com

Hi all,

I have php web programming background, and new to Django. I am helping my brother to build an online system to manage inventory, and I've got a database design & coding problem recently. Needing help!

How to attach a "comments" table to 1 or more tables?

That is, I have a set of tables of "possible products", "inventory", "suppiler", etc. I want to attach a "comments" to each of them, where the "comments" holds all the comment records of them. Therefore, I think I should make a generic "comment" table to hold all the comments of products, inventory, suppiler. Is that right?

Conceptual models of my tables:
--

possible_products

	id: int (pk)
	name: varchar
	url: varchar
	price: decimal
	created_at: datetime
	updated_at: datetime


comments

	id: int (pk)
	parent_id: int (fk)
	content: text
	author: int (fk)
	table: char (which the table this comment belongs to)
	created_at: datetime
	updated_at: datatime


My problem is, when "possible_products" table is the parent of "comment", then a foreign key of the parent (id number) is stored in the "comment" table in order to link up them.

However, how about the fk of the "inventory" table and the "suppiler" table? It should not be that: I create 2 more columns of "inventory_id" nor "suppiler_id" in "comments" table. (That is, I should not create the 4th column when I want to link up the 4th parent table.)

So, Should I use generic foreign key of Django? (so that, my "comment" table design is right.) And how to use/implement it?

Or, should I / Is it better to make an intermediate table with foreign key to link up "possible products"/"inventory"/"sellers" and "comments" ?(on design...like a many-to-many relationship)

P.S. I mainly develop the system in Django Admin. With Python 3.4 & Django 1.7rc2.

2014-08-16
* ask at: http://stackoverflow.com/questions/25351550/should-i-use-generic-foreign-key-with-django-and-how
----
Django self-referential foreign key 