-- TABLE CREATION QUERIES

CREATE TABLE udemy_db.mainasgt.navhistory (code int, nav_date date, nav int, repurchase_price int, sale_price int);
CREATE TABLE udemy_db.mainasgt.amc (id int not null primary key, name varchar(255))
CREATE TABLE udemy_db.mainasgt.fundcategory (id int not null primary key, category varchar(255))
CREATE TABLE udemy_db.mainasgt.mutualfund (code int, amc_id int, category_id int, name varchar(255), isin_growth varchar(255), isin_dividend_payout varchar(255),isin_dividend_reinvestment varchar(255))

--