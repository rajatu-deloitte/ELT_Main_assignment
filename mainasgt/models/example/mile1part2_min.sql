select nav_date, t4.code as code, t4.minimum from udemy_db.mainasgt.navhistory t3 join 
(select t1.code as code, min(t2.nav) as minimum from udemy_db.mainasgt.mutualfund t1 join 
udemy_db.mainasgt.navhistory t2 
 on t1.code = t2.code group by t1.code) t4
where t3.code = t4.code and t3.nav = t4.minimum