select code, max(nav_date) as maximum from udemy_db.mainasgt.navhistory group by code 
having max(nav_date) < (select max(nav_date) as maximum from udemy_db.mainasgt.navhistory)