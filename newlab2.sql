DROP DATABASE IF EXISTS newlab2;
DROP TABLE IF EXISTS countries;
CREATE DATABASE newlab2;
CREATE TABLE countries(
  country_id SERIAL PRIMARY KEY,
  country_name varchar(50),
  region_id integer,
  population integer

);
INSERT INTO countries VALUES(DEFAULT ,'Washington', 4, 10000);
INSERT INTO countries(country_id, country_name) VALUES(DEFAULT ,'Japan');
UPDATE countries SET region_id = DEFAULT WHERE region_id NOTNULL;

INSERT INTO countries(country_id, country_name, region_id, population) values (DEFAULT, 'Spain', 7, 2999),
( DEFAULT, 'China', 3, 100000),
(DEFAULT ,'Russia', 2, 18939);
SELECT *FROM countries;
INSERT INTO countries(country_id,country_name) VALUES(DEFAULT ,'Kazakhstan');
SELECT *FROM countries;
INSERT INTO countries(country_name) VALUES(DEFAULT );
UPDATE countries SET  country_name = DEFAULT;
DROP TABLE IF EXISTS countries_new;
CREATE TABLE countries_new AS SELECT *FROM countries;
INSERT INTO countries_new  SELECT *FROM countries;
SELECT *FROM countries_new;
UPDATE countries SET region_id = 1 WHERE region_id ISNULL;
SELECT *FROM countries;
UPDATE countries SET population = population + population * 0.1 RETURNING country_name;
DELETE FROM countries WHERE population < 100000;
SELECT *FROM countries;
DELETE FROM countries_new WHERE EXISTS(countries.country_id) in (SELECT country_id);
SELECT *FROM countries_new_;