Drop database  lab2;
CREATE DATABASE lab2;
drop table countries;
DROP  TABLE  countries_new;
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
Delete From countries;
SELECT * from countries;




