drop database if exists lab5;
Create DATABASE  lab5;
drop table if exists customers;
CREATE table customers (
  customer_id integer,
  cust_name VARCHAR(50),
  city varchar(50),
  grade integer,
  salesman_id integer
);
INSERT Into customers (customer_id, cust_name, city, grade, salesman_id) values
(3002,'Nick Rimando', 'New York', 100, 5001), (3005, 'Graham Zusi', 'California', 200, 5002),
(3001, 'Brad Guzan', 'London', default , 5005), (3004, 'Fabian Johns', 'Paris', 300, 5006),
(3007, 'Brad Davis', 'New York', 200, 5003), (3009, 'Geoff Camero', 'Berlin', 100, 5003),
(3008, 'Julian Green', 'London', 300, 5002);
SELECT *from customers;
SELECT *from customers where grade > 100;
SELECT *from customers where city ='New York' And grade > 100;
select *from customers where city ='New York' Or grade > 100;
select *from customers where city ='Paris' or city = 'Rome';
SELECT *from customers where substr(cust_name, 1, 1) = 'B';
drop table if exists  orders;
Create TABLE orders (
  order_id serial primary key,
  customer_id INTEGER,
  descreption VARCHAR(50),
  purch_amt integer
);
SELECT *from orders where customer_id = (select customer_id from customers where city = 'New York' );

Select *from customers where grade notnull ;
SELECT max(purch_amt) from orders;

CREATE DATABASE lab2;
Drop Table if exists  countries;
DROP  TABLE if exists countries_new;
CREATE Table countries (
  country_id Serial,
  country_name VARCHAR(50),
  region_id  int,
  population int


);

INSERT INTO countries values (default ,'Japan', 15,200000);
INSERT  INTO countries (country_id, country_name)  values (default ,'USA');

INSERT into  countries (region_id ) values(NULL);
INSERT INTO   countries values (default ,'Russia',42,1000000),
  (default ,'China',53,10000000), (default , 'Gottom', 56, 230000);


ALTER  TABLE  countries alter column country_name   SET DEFAULT  'Kazakstan';
select * from countries;
INSERT  into  countries(country_name) values(default);
INSERT  into countries values (default );

CREATE  TABLE countries_new (
    LIKE countries
);
INSERT INTO countries_NEW SELECT * FROM countries RETURNING *;



UPDATE countries
 SET region_id = 1 WHERE  region_id IS NULL;

UPDATE countries SET population =  population * 10 / 100 + population
    RETURNING country_name, population AS "NEW Population";

DELETE  from  countries where  population <1000000;
Delete FROM  countries as c  using   countries_new as n where c.country_id = n.country_id
returning*;

SELECT * from countries;




