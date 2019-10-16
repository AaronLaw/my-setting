== SQL 自修速成班之 subquery ==

今天是我用 SQL 以來的第五天...

Model Maker / aaRon (10:15 AM) : 
我想問下，如果sql 我行完句 SELETE statement ，找到岩用的 result...
我想用番呢個 result 去做 UPDATE...
咁我係咪可以：

UPDATE ep2_mdccourselist
SET deleted = 0
WHERE (SELECT * from  xxx    -- <-----------由括號開始就係之前岩用個句 select 勒
.....
)

～ａLａN～ (10:17 AM) : 
唔得...

Model Maker / aaRon (10:17 AM) : 
oh...

～ａLａN～ (10:17 AM) : 
where 後面要係 criteria
Model Maker / aaRon (10:18 AM) : 
ic...

～ａLａN～ (10:18 AM) : 
like this:
update abc set a=0 where id in (select id from def where .....)

Model Maker / aaRon (10:18 AM) : 
ic, let me see see, thanks :)

～ａLａN～ (10:19 AM) : 
未 send 得都 gen 定 profile 得唔得?

Model Maker / aaRon (10:20 AM) : 
ok ar, 之從要對下個 excel 的資料同你 gen profile 時的 criteria 一唔一樣...
if the same , no need to regen;
else, need to regen (記得 exclude other tables)

Model Maker / aaRon (10:20 AM) : 
...之後要對下...

～ａLａN～ (10:21 AM) : 
個 philosophy email 全部 criteria 都係要女.... 唔夠係唔係照加男 ? 美容....

Model Maker / aaRon (10:23 AM) : 
oh yes , 你教我句 SQL 行到 & correct bor...thanks
----
my orig SQL:
(here I take out the courses which are deleted( -1 represents a state of "deleted") and their "recpyid" is 3)

SELECT recpyid_ref
FROM 	ep2_MDCCourseList, ep2_MDCCompany
WHERE	deleted = -1 and ( (ep2_MDCCourseList.recpyid_ref = ep2_MDCCompany.recpyid) and recpyid = 3 )
----
after execution in MSSQL, it turns:
(the criteria is same as above)

SELECT 	recpyid_ref
FROM 	ep2_MDCCourseList INNER JOIN
		ep2_MDCCompany ON 
		ep2_MDCCourseList.recpyid_ref = ep2_MDCCompany.recpyid
WHERE 	(ep2_MDCCourseList.deleted = -1) AND 
	(ep2_MDCCompany.recpyid = 3))
-----
Then I put the result into an UPDATE statement:
(I use the above result to UPDATE its record, turning the posting status (where "deleted" is -1...(-1 means a course is deleted) ) to 0)


UPDATE 	ep2_MDCCourseList
SET 	deleted = 0 	-- set the course to a non-delete-state
WHERE	(recpyid_ref IN
		(
		SELECT 	recpyid_ref, recpyid
		FROM  	ep2_MDCCourseList INNER JOIN
			ep2_MDCCompany ON 
			ep2_MDCCourseList.recpyid_ref = ep2_MDCCompany.recpyid
		WHERE	(ep2_MDCCourseList.deleted = -1) AND 
			(ep2_MDCCompany.recpyid = 3)
		)
	)
----

20060908 1027
